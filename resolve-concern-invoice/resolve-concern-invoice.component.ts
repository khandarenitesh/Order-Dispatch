import { Component, OnInit, ViewChild, ChangeDetectorRef } from '@angular/core';
import { MatPaginator } from '@angular/material/paginator';
import { MatSort } from '@angular/material/sort';
import { MatTableDataSource } from '@angular/material/table';
import { InvoiceModel } from '../Models/invoice-model';
import { ToastrService } from 'ngx-toastr';
import { OrderDispatchService } from '../Services/order-dispatch.service';
import { AppCode } from '../../../app.code';
import { NgbModal, NgbModalRef } from '@ng-bootstrap/ng-bootstrap';
import { PicklistCountModel } from '../Models/picklistcount-model';
import { NgForm } from '@angular/forms';

export class Rconcern {
  Remark: string;
}

@Component({
  selector: 'app-resolve-concern-invoice',
  templateUrl: './resolve-concern-invoice.component.html',
  styleUrls: ['./resolve-concern-invoice.component.scss']
})
export class ResolveConcernInvoiceComponent implements OnInit {

  DisplayInvoiceData = ['SrNo', 'InvNo', 'StockistNo', 'StockistName', 'CityName', 'StatusText', 'BillDrawerName',
    'PackingConcernText', 'PackingRemark', 'DispatchByName', 'DispatchConcernText', 'ReadyToDispatchRemark', 'Actions'];

  @ViewChild('paginator') paginator: MatPaginator;
  @ViewChild('Sort') Sort: MatSort;
  public DataSource = new MatTableDataSource<any>();
  @ViewChild('ConcernForm') ConcernForm: NgForm;

  rconcern: Rconcern;
  isLoading: boolean = false;
  UserId: number = 0;
  BranchId: number = 0;
  CompId: number = 0;
  invoicemodel: InvoiceModel;
  DataModel: any;
  Title: string = "";
  searchModel: string = '';
  ResolveConernInvModal: any;
  pageState: string = '';
  ModelCount: any;
  currentDate = new Date();
  picklistcount: PicklistCountModel;
  AllPickList: number = 0;
  RejectbyOperator: number = 0;
  PendingForAllot: number = 0;
  AllotedPicklist: number = 0;
  AcceptedPickList: number = 0;
  ConcernRaised: number = 0;
  CompletedPicklists: number = 0;
  CompletedVerified: number = 0;
  BillDrawerId: number = 0;
  InvId: number = 0;
  CurrentStatus: number = 0;
  Remark: string;
  Addedby: number = 0;
  updateDate: number = 0;
  AcceptedBy: number = 0;

  constructor(private chRef: ChangeDetectorRef, private _ToastrService: ToastrService,
    private _orderDispatchService: OrderDispatchService, private modalService: NgbModal) {
    this.currentDate = new Date();
  }

  ngOnInit(): void {
    this.pageState = "Submit";
    this.Title = "List View"
    let obj = AppCode.getUser();
    this.UserId = obj.UserId;
    this.BranchId = obj.BranchId;
    this.CompId = obj.CompanyId;

    this.DataModel = {
      BranchId: this.BranchId,
      CompId: this.CompId,
      BillDrawerId: 0
    };
    this.GetInvoiceList(this.DataModel);

    this.ModelCount = {
      BranchId: this.BranchId,
      CompId: this.CompId,
      PicklistDate: this.currentDate
    };
    this.GetPickListCounts(this.ModelCount);
  }

  GetInvoiceList(DataModel: any) {
    this.isLoading = true;
    this._orderDispatchService.getInvoiceLstResolveCncrn_Service(DataModel).subscribe((data: any) => {
      if (data.length > 0) {
        this.DataSource.data = data;
        this.DataSource.paginator = this.paginator;
        this.DataSource.sort = this.Sort;
        this.GetPickListCounts(this.ModelCount);
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

  ResolveConernInvPopup(row: any, content: any) {
    this.CurrentStatus = 0;
    this.InvId = 0;
    this.Remark = "";
    this.InvId = row.InvId;
    this.CurrentStatus = row.InvStatus;
    this.AcceptedBy = row.AcceptedBy;
    this.ResolveConernInvModal = this.modalService.open(content, {
      centered: true,
      size: 'md',
      backdrop: 'static'
    });
  }

  ResolveInvConernSave() {
    this.isLoading = true;
    let model = {
      "InvId": this.InvId,
      'BranchId': this.BranchId,
      "AcceptedBy" : this.AcceptedBy,
      "CurrentStatus": this.CurrentStatus,
      'Remark': this.Remark,
      "Addedby": this.UserId,
      "updateDate": this.currentDate
    }
    this._orderDispatchService.ResolveInvConern_Service(model)
      .subscribe((data: any) => {
        if (data === AppCode.SuccessStatus) {
          this._ToastrService.success(AppCode.msg_ResolveConernSuccess);
          this.modalService.dismissAll();
          this.GetInvoiceList(this.DataModel);
          this.GetPickListCounts(this.ModelCount);
          this.isLoading = false;
          this.chRef.detectChanges();
        }
        else {
          this._ToastrService.error(AppCode.msg_ResolveConernFail);
          this.isLoading = false;
        }
      }, (error: any) => {
        console.error("Error:  " + JSON.stringify(error));
      });
  }

  // Get PickList Counts
  GetPickListCounts(ModelCount: any) {
    this.isLoading = true;
    this._orderDispatchService.getPickListCounts_Service(ModelCount)
      .subscribe((data: any) => {
        this.afterCount(data);
      }, (error: any) => {
        console.error("Error:  " + JSON.stringify(error));
        this.isLoading = false;
        this.chRef.detectChanges();
      });
  }

  afterCount(data: PicklistCountModel) {
    this.picklistcount = new PicklistCountModel();
    this.picklistcount = data;;
    this.AllPickList = this.picklistcount.TotalPL;
    this.RejectbyOperator = this.picklistcount.OperatorRejected;
    this.PendingForAllot = this.picklistcount.Pending;
    this.AllotedPicklist = this.picklistcount.Alloted;
    this.AcceptedPickList = this.picklistcount.Accepted;
    this.ConcernRaised = this.picklistcount.Concern;
    this.CompletedPicklists = this.picklistcount.Completed;
    this.CompletedVerified = this.picklistcount.CompletedVerified;
    this.chRef.detectChanges();
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
