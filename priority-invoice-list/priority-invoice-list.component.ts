import { Component, OnInit, ViewChild,ChangeDetectorRef } from '@angular/core';
import { ToastrService } from 'ngx-toastr';
// Datasource- Table
import { MatPaginator } from '@angular/material/paginator';
import { MatSort } from '@angular/material/sort';
import { MatTableDataSource } from '@angular/material/table';

// Services
import { OrderDispatchService } from '../Services/order-dispatch.service';
import { AppCode } from '../../../app.code';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { NgForm } from '@angular/forms';
export class Rremark {
  Remark:string;
}
@Component({
  selector: 'app-priority-invoice-list',
  templateUrl: './priority-invoice-list.component.html',
  styleUrls: ['./priority-invoice-list.component.scss']
})
export class PriorityInvoiceListComponent implements OnInit {
  DisplayInvoiceData = ['SrNo', 'InvNo', 'InvCreatedDate', 'PONo', 'PODate',
  'StockistNo', 'StockistName', 'CityName', 'InvAmount', 'StatusText', 'Actions'];

  @ViewChild('paginator') paginator: MatPaginator;
  @ViewChild('Sort') Sort: MatSort;
  @ViewChild('RmarkForm') RmarkForm: NgForm;
  public DataSource = new MatTableDataSource<any>();
  isLoading: boolean = false;
  UserId: number = 0;
  BranchId: number = 0;
  CompId: number = 0;
  DataModel: any;
  Title: string = "";
  searchModel: string = '';
  UpdateModal:any;
  
  InvId:number=0;
  PriorityFlag:number=0;
  Remark:string = '';
  Addedby: string = '';
  updateDate: Date = new Date();
  currentDate: Date;
  InvStatus : string;
  rremark :Rremark
  //PriorityFlagmodel: PriorityFlagModel;

  constructor( private chRef: ChangeDetectorRef,
    private modalService: NgbModal,
    private _ToastrService: ToastrService,
    private _orderDispatchService: OrderDispatchService) 
    { this.currentDate = new Date();}

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
    this.rremark = {
      Remark:"",
    };
    this.GetInvoiceList(this.DataModel);
  }

    // Get Invoice List
    GetInvoiceList(DataModel: any) {
      this.isLoading = true;
      this._orderDispatchService.getInvoice_Service(DataModel).subscribe((data: any) => {
        if (data.length > 0 && data != null && data != [] && data != "" && data != undefined) {
          this.DataSource.data = data.filter((x:any) => x.StatusText != 'Getpass Generated' && x.StatusText != 'Cancel');
          this.DataSource.paginator = this.paginator;
          this.DataSource.sort = this.Sort;
          this.isLoading = false;
          this.chRef.detectChanges();
        } 
        else {
          this.DataSource.data = [];
          this.isLoading = false;
          this.chRef.detectChanges();
        }
        (error: any) => {
          console.log(error);
        }
        
      });
    }

    UpdateFlagPopup(row: any, content: any) {
      this.InvId = row.InvId;
      this.Remark = "";
      this.UpdateModal = this.modalService.open(content, {
        centered: true,
        size: 'md',
        backdrop: 'static'
      });
    }

    UpdatePriorityFlag(){
      // this.isLoading = true;
      let PriorityFlagModel= {
        InvId: this.InvId,
        PriorityFlag : 1,
        Remark : this.Remark,
        Addedby : String(this.UserId),
        updateDate:this.currentDate
      }
      this._orderDispatchService.UpdatePriorityFlag_Service(PriorityFlagModel).subscribe((data : any) =>{
        if(data === AppCode.SuccessStatus){
          this._ToastrService.success(AppCode.msg_saveSuccess);
          this.GetInvoiceList(this.DataModel);
          this.modalService.dismissAll();
          this.chRef.detectChanges();
        }
        
      },
      (error) => {
        console.error(error);
      }
      );
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
