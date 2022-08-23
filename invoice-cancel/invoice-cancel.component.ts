import { ChangeDetectorRef, Component, OnInit, ViewChild } from '@angular/core';

// Datasource- Table
import { MatPaginator } from '@angular/material/paginator';
import { MatSort } from '@angular/material/sort';
import { MatTableDataSource } from '@angular/material/table';

// Router
import { Router } from '@angular/router';
import { ToastrService } from 'ngx-toastr';

import { AppCode } from '../../../app.code';

// Model
import { InvoiceModel } from '../Models/invoice-model';

// Services
import { OrderDispatchService } from '../Services/order-dispatch.service';
import Swal from 'sweetalert2';

@Component({
  selector: 'app-invoice-cancel',
  templateUrl: './invoice-cancel.component.html',
  styleUrls: ['./invoice-cancel.component.scss']
})
export class InvoiceCancelComponent implements OnInit {
  DisplayInvoiceData = ['SrNo', 'InvNo', 'InvCreatedDate', 'PONo', 'PODate',
    'StockistNo', 'StockistName', 'CityName', 'InvAmount', 'StatusText', 'Actions'];
  @ViewChild('paginator') paginator: MatPaginator;
  @ViewChild('Sort') Sort: MatSort;
  public DataSource = new MatTableDataSource<any>();
  isLoading: boolean = false;
  UserId: number = 0;
  BranchId: number = 0;
  CompId: number = 0;
  invoicemodel: InvoiceModel;
  DataModel: any;
  searchModel: string = '';
  InvId: number = 0;
  currentDate: Date;
  Title: string = "";

  constructor(private router: Router,
    private chRef: ChangeDetectorRef,
    private _ToastrService: ToastrService,
    private _orderDispatchService: OrderDispatchService) {
    this.currentDate = new Date(); // Today's Current Date
  }

  ngOnInit(): void {
    this.Title = "List View";
    let obj = AppCode.getUser();
    this.UserId = obj.UserId;
    this.BranchId = obj.BranchId;
    this.CompId = obj.CompanyId;
    this.DataModel = {
      BranchId: this.BranchId,
      CompId: this.CompId,
      FromDate: null,
      ToDate: null,
      BillDrawerId: 0
    };
    this.GetInvoiceList(this.DataModel);
  }

  // Get Invoice List
  GetInvoiceList(DataModel: any) {
    this.isLoading = true;
    this._orderDispatchService.getInvoice_Service(DataModel).subscribe((data: any) => {
      if (data.length > 0 && data != null && data != [] && data != "" && data != undefined) {
        this.DataSource.data = data;
        this.DataSource.paginator = this.paginator;
        this.DataSource.sort = this.Sort;
        this.isLoading = false;
        this.chRef.detectChanges();
      } else {
        this.DataSource.data = [];
        this.isLoading = false;
        this.chRef.detectChanges();
      }
      (error: any) => {
        console.log(error);
      }
    });
  }

  // To cancel invoice
  ChangeStatus(row: any) {
    Swal.fire({
      title: 'Are you sure?',
      text: "You won't be able to revert this!",
      icon: 'warning',
      showCancelButton: true,
      confirmButtonColor: '#3085d6',
      cancelButtonColor: '#d33',
      confirmButtonText: 'Yes, cancel it!'
    }).then((result) => {
      if (result.isConfirmed) {
        this.InvId = row.InvId;
        this.isLoading = true;
        let cancelInvoiceBody = {
          InvId: row.InvId,
          BranchId: this.BranchId,
          CompId: this.CompId,
          InvStatus: AppCode.cancelStatusForINV, // 20 Cancel
          NoOfBox: 0,
          InvWeight: 0,
          IsColdStorage: false,
          IsCourier: 0,
          ConcernId: 0,
          Remark: '',
          Addedby: String(this.UserId),
          UpdateDate: this.currentDate
        }
        this._orderDispatchService.InvoiceHeaderStatusUpdate_Service(cancelInvoiceBody)
          .subscribe((data: any) => {
            if (data === AppCode.SuccessStatus) {
              this._ToastrService.success(AppCode.msg_cancelled);
            }
            this.isLoading = false;
            this.GetInvoiceList(this.DataModel);
          }, (error: any) => {
            console.error("Error:  " + JSON.stringify(error));
          });
      }
    });
  }

  // Search - Apply Filter
  applyFilter() {
    this.isLoading = true;
    // this.searchModel = this.searchModel.trim(); // Remove whitespace
    this.searchModel = this.searchModel.toLowerCase(); // Datasource defaults to lowercase matches
    this.DataSource.filter = this.searchModel;
    this.isLoading = false;
    this.chRef.detectChanges(); // IMMEDIATE ACTION FIRED
  }

}
