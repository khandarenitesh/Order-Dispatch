import { Component, OnInit, ViewChild, ChangeDetectorRef } from '@angular/core';

import { MatPaginator } from '@angular/material/paginator';
import { MatSort } from '@angular/material/sort';
import { MatTableDataSource } from '@angular/material/table';

import { Router } from '@angular/router';

import { InvoiceModel } from './../Models/invoice-model';

import { SharedService } from '../../../SharedServices/shared.service';
import { AppCode } from '../../../app.code';
import { ToastrService } from 'ngx-toastr';
import { OrderDispatchService } from '../Services/order-dispatch.service';

@Component({
  selector: 'app-invoice-list',
  templateUrl: './invoice-list.component.html',
  styleUrls: ['./invoice-list.component.scss']
})
export class InvoiceListComponent implements OnInit {

  DisplayInvoiceData = ['SrNo', 'InvNo', 'InvCreatedDate', 'PONo', 'PODate',
    'StockistNo', 'StockistName', 'CityName', 'InvAmount', 'StatusText'];//, 'Actions'

  @ViewChild('paginator') paginator: MatPaginator;
  @ViewChild('Sort') Sort: MatSort;
  public DataSource = new MatTableDataSource<any>();
  isLoading: boolean = false;
  UserId: number = 0;
  BranchId: number = 0;
  CompId: number = 0;
  invoicemodel: InvoiceModel;
  DataModel: any;
  Title: string = "";
  searchModel: string = '';

  constructor(private router: Router, private _SharedService: SharedService,
    private chRef: ChangeDetectorRef, private _ToastrService: ToastrService,
    private _orderDispatchService: OrderDispatchService) {
  }

  ngOnInit(): void {
    this.Title = "List View"
    let obj = AppCode.getUser();
    this.UserId = obj.UserId;
    this.BranchId = obj.BranchId;
    this.CompId = obj.CompanyId;

    if (this.BranchId > 0) {  // Branch Login
      this.DataModel = {
        BranchId: this.BranchId,
        CompId: this.CompId,
        FromDate: null,
        ToDate: null,
        BillDrawerId: 0
      };
      this.GetInvoiceList(this.DataModel);
    } else {   // Super Admin Login
      this.DataModel = {
        BranchId: this.BranchId,
        CompId: this.CompId,
        FromDate: null,
        ToDate: null,
        BillDrawerId: 0
      };
      this.GetInvoiceList(this.DataModel);
    }

  }

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

  ChangeStatus(row: InvoiceModel) {
    this.isLoading = true;
    this.isLoading = false;
    this.invoicemodel = new InvoiceModel();
    this.invoicemodel.BranchId = row.BranchId;
    this.invoicemodel.CompId = this.CompId;
    this.invoicemodel.InvNo = row.InvNo;
    this.invoicemodel.InvPostingDate = row.InvPostingDate;
    this.invoicemodel.InvCreatedDate = row.InvCreatedDate;
    this.invoicemodel.ItemCategory = row.ItemCategory;
    this.invoicemodel.IsColdStorage = row.IsColdStorage;
    this.invoicemodel.SoldTo_StokistId = row.SoldTo_StokistId;
    this.invoicemodel.StockistNo = row.StockistNo;
    this.invoicemodel.SoldTo_City = row.SoldTo_City;
    this.invoicemodel.InvAmount = row.InvAmount;
    this.invoicemodel.SONo = row.SONo;
    this.invoicemodel.SODate = row.SODate;
    this.invoicemodel.BilingType = row.BilingType;
    this.invoicemodel.Addedby = String(this.UserId);
    this.invoicemodel.Action = AppCode.deleteString;
    this._orderDispatchService.InvoiceAddEdit_Service(this.invoicemodel)
      .subscribe((data: any) => {
        if (data === AppCode.StatusChangedStatus) {
          this._ToastrService.success(AppCode.msg_deleteSuccess);
          if (this.BranchId > 0) {  // Branch Login
            this.DataModel = {
              BranchId: this.BranchId,
              CompId: this.CompId,
              FromDate: null,
              ToDate: null,
              BillDrawerId: 0
            };
            this.GetInvoiceList(this.DataModel);
          } else {   // Super Admin Login
            this.DataModel = {
              BranchId: this.BranchId,
              CompId: this.CompId,
              FromDate: null,
              ToDate: null,
              BillDrawerId: 0
            };
            this.GetInvoiceList(this.DataModel);
          }
        }
      }, (error: any) => {
        console.error(error);
      });
  }

  redirect() {
    this.router.navigate(['/modules/order-dispatch/invoice-add']);
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
