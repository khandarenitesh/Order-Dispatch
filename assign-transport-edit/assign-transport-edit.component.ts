import { Component, OnInit, ViewChild, ChangeDetectorRef } from '@angular/core';

import { MatPaginator } from '@angular/material/paginator';
import { MatSort } from '@angular/material/sort';
import { MatTableDataSource } from '@angular/material/table';

import { AppCode } from '../../../app.code';
import { ToastrService } from 'ngx-toastr';
import { AbstractControl, FormGroup, FormBuilder, Validators } from '@angular/forms';
import { MastersServiceService } from '../../master-forms/Services/masters-service.service';
import { AssignTransportModel } from '../Models/assign-transport-model';
import { OrderDispatchService } from '../Services/order-dispatch.service';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';

@Component({
  selector: 'app-assign-transport-edit',
  templateUrl: './assign-transport-edit.component.html',
  styleUrls: ['./assign-transport-edit.component.scss']
})
export class AssignTransportEditComponent implements OnInit {

  DisplayAssignTransportData = ['SrNo', 'InvNo', 'InvCreatedDate', 'StockistNo', 'StockistName', 'SoldTo_City', 'TransporterName', 'PersonName', 'TransportModeId', 'Actions'];//'InvoiceId', 

  @ViewChild('paginator') paginator: MatPaginator;
  @ViewChild('Sort') Sort: MatSort;
  public DataSource = new MatTableDataSource<any>();
  isLoading: boolean = false;
  UserId: number = 0;
  BranchId: number = 0;
  CompId: number = 0;
  DataModel: any;
  Title: string = "";
  searchModel: string = '';
  TitleState: string = "";
  isCourier: string = "";
  isFlag: string = '';
  AssignTransportForm: FormGroup;
  TransportModel: AssignTransportModel;
  EditAssignTransportModel: AssignTransportModel
  submitted = false;
  TransportModeList: any[] = [];
  AssignTransportList: any[] = [];
  AssignTransportLst: any[] = [];
  AssignCourierList: any[] = [];
  UserModal: any;
  assigntransportMid: number = 0;
  invoiveId: string = "";
  defaultform: any = {
    TransportModeId: '',
    PersonName: '',
    PersonAddress: '',
    PersonMobileNo: '',
    OtherDetails: '',
    AssignTransport: '',
    AssignedTransport: '',
    DeliveryRemark: '',
    AssignCourier: '',
  };
  constructor(private _orderDispatchService: OrderDispatchService,
    private fb: FormBuilder,
    private chRef: ChangeDetectorRef,
    private _ToastrService: ToastrService,
    private _MastersServiceService: MastersServiceService,
    private modalService: NgbModal,
    private commonCode : AppCode) {
  }

  ngOnInit(): void {
    this.initForm();
    this.Title = "List View";
    let obj = AppCode.getUser();
    this.UserId = obj.UserId;
    this.BranchId = obj.BranchId;
    this.CompId = obj.CompanyId;
    this.f.TransportModeId.setValue(1);
    this.DataModel = {
      BranchId: this.BranchId,
      CompId: this.CompId,
    };
    this.GetAssignedTransportList(this.DataModel);
    this.GetAssignTransportList();
    this.GetCourierList(this.BranchId);
  }

  get f(): { [key: string]: AbstractControl } {
    return this.AssignTransportForm.controls;
  }

  EditAssignedTransport(content: any, row: any) {
    this.isCourier = row.CourierName;
    this.assigntransportMid = row.AssignTransMId;
    this.invoiveId = row.InvoiceId;
    this.UserModal = this.modalService.open(content, {
      centered: true,
      size: 'lg',
      backdrop: 'static'
    });
    this.TitleState = "Update Assigned Transport";
    this.SetData(row);
  }

  SetData(row: AssignTransportModel) {
    this.EditAssignTransportModel = new AssignTransportModel();
    if (row.TransportModeId == '2') {
      this.isFlag = AppCode.othercitystring;
      this.f.AssignedTransport.enable();
      this.f.AssignCourier.enable();
      this.f.OtherDetails.enable();
      this.f.TransportModeId.setValue(row.TransportModeId);
      this.f.OtherDetails.setValue(row.OtherDetails);
      if (this.isCourier !== "") {
        this.f.AssignCourier.setValue(row.CourierId);
        this.f.AssignedTransport.disable();
        this.f.AssignedTransport.setValue('');
      }
      else {
        this.f.AssignedTransport.enable();
        this.f.AssignedTransport.setValue(row.TransporterId);
        this.f.AssignCourier.disable();
      }
      this.f.PersonName.disable();
      this.f.PersonAddress.disable();
      this.f.PersonMobileNo.disable();
      this.f.AssignTransport.disable();
      this.f.DeliveryRemark.disable();
    }
    else if (row.TransportModeId == '1') {
      this.isFlag = AppCode.localstring;
      this.f.AssignTransport.enable();
      this.f.DeliveryRemark.enable();
      this.f.TransportModeId.setValue(row.TransportModeId);
      this.f.AssignTransport.setValue(row.TransporterId);
      this.f.DeliveryRemark.setValue(row.Delivery_Remark);
      this.f.PersonName.disable();
      this.f.PersonAddress.disable();
      this.f.PersonMobileNo.disable();
      this.f.OtherDetails.disable();
      this.f.AssignedTransport.disable();
      this.f.AssignCourier.disable();
    }
    else if (row.TransportModeId == '3') {
      this.isFlag = AppCode.byhandstring;
      this.f.PersonName.enable();
      this.f.PersonAddress.enable();
      this.f.PersonMobileNo.enable();
      this.f.OtherDetails.enable();
      this.f.TransportModeId.setValue(row.TransportModeId);
      this.f.PersonName.setValue(row.PersonName);
      this.f.PersonAddress.setValue(row.PersonAddress);
      this.f.PersonMobileNo.setValue(row.PersonMobileNo);
      this.f.OtherDetails.setValue(row.OtherDetails);
      this.f.AssignTransport.disable();
      this.f.AssignedTransport.disable();
      this.f.AssignCourier.disable();
    }
    this.chRef.detectChanges();
  }

  initForm() {
    this.AssignTransportForm = this.fb.group({
      TransportModeId: [
        this.defaultform.TransportModeId,
        Validators.compose([
          Validators.required
        ]),
      ],
      PersonName: [
        this.defaultform.PersonName,
        Validators.compose([
          Validators.required,
          Validators.maxLength(50),
        ]),
      ],
      PersonAddress: [
        this.defaultform.PersonAddress,
        Validators.compose([
          Validators.required,
          Validators.maxLength(50),
        ]),
      ],
      PersonMobileNo: [
        this.defaultform.PersonMobileNo,
        Validators.compose([
          Validators.required,
          Validators.maxLength(50),
        ]),
      ],
      OtherDetails: [
        this.defaultform.OtherDetails
      ],
      AssignTransport: [
        this.defaultform.AssignTransport,
        Validators.compose([
          Validators.required,
          Validators.maxLength(50),
        ]),
      ],
      AssignedTransport: [
        this.defaultform.AssignedTransport,
        Validators.compose([
          Validators.required,
          Validators.maxLength(50),
        ]),
      ],
      DeliveryRemark: [
        this.defaultform.DeliveryRemark
      ],
      AssignCourier: [
        this.defaultform.AssignCourier,
        Validators.compose([
          Validators.required,
          Validators.maxLength(50),
        ]),
      ],
    });
  }
  // Get Invoice List
  GetAssignedTransportList(DataModel: any) {
    this.isLoading = true;
    this._orderDispatchService.getAssignTransportList_Service(DataModel).subscribe((data: any) => {
      if (data.length > 0 && data != null && data != [] && data != "" && data != undefined) {
        this.DataSource.data = data;
        this.DataSource.paginator = this.paginator;
        this.DataSource.sort = this.Sort;
      } else {
        this.DataSource.data = [];
      }
      this.isLoading = false;
      this.chRef.detectChanges();
      (error: any) => {
        console.log(error);
        this.isLoading = false;
        this.chRef.detectChanges();
      }
    });
  }

  // Get Transport List
  GetAssignTransportList() {
    this._MastersServiceService.getGetTransporterList_Service(AppCode.allString, AppCode.allString)
      .subscribe((data: any) => {
        this.AssignTransportList = data;
        this.AssignTransportLst = data;
        this.chRef.detectChanges();
      },
        (error: any) => {
          console.error("Error:" + JSON.stringify(error));
          this.chRef.detectChanges();
        });
  }

  // Get Courier List
  GetCourierList(BranchId: number) {
    this._MastersServiceService.getGetCourierList_Service(BranchId, AppCode.allString, AppCode.allString)
      .subscribe((data: any) => {
        this.AssignCourierList = data;
        this.chRef.detectChanges();
      },
        (error: any) => {
          console.error("Error:" + JSON.stringify(error));
          this.chRef.detectChanges();
        });
  }

  // Selection Change events Transport Mode
  onTransportMode(event: any) {
    this.isLoading = true;
    if (event.value === 1) {
      this.isFlag = AppCode.localstring;
      this.f.AssignTransport.enable();
      this.f.AssignTransport.setValue(this.AssignTransportLst[0].TransporterId)
      this.f.DeliveryRemark.enable();
      this.f.PersonName.disable();
      this.f.PersonAddress.disable();
      this.f.PersonMobileNo.disable();
      this.f.OtherDetails.disable();
      this.f.AssignedTransport.disable();
      this.f.AssignCourier.disable();
    } else if (event.value === 2) {
      this.isFlag = AppCode.othercitystring;
      this.f.OtherDetails.enable();
      this.f.AssignedTransport.enable();
      this.f.AssignCourier.enable();
      if (this.isCourier !== "") {
        this.f.AssignCourier.setValue(this.AssignCourierList[0].CourierId);
        this.f.AssignedTransport.disable();
      }
      else {
        this.f.AssignedTransport.setValue(this.AssignTransportLst[0].TransporterId);
        this.f.AssignCourier.disable();
      }
      this.f.AssignTransport.disable();
      this.f.DeliveryRemark.disable();
      this.f.PersonName.disable();
      this.f.PersonAddress.disable();
      this.f.PersonMobileNo.disable();
    } else {
      this.isFlag = AppCode.byhandstring;
      this.f.PersonName.enable();
      this.f.PersonAddress.enable();
      this.f.PersonMobileNo.enable();
      this.f.OtherDetails.enable();
      this.f.AssignCourier.disable();
      this.f.AssignTransport.disable();
      this.f.DeliveryRemark.disable();
      this.f.AssignedTransport.disable();
    }
    this.isLoading = false;
    this.chRef.detectChanges();
  }

  // Save assigned transport
  UpdateAssignTransport() {
    this.submitted = true;
    this.isLoading = true;
    if (!this.AssignTransportForm.valid) {
      return;
    } else {
      this.TransportModel = new AssignTransportModel();
      this.TransportModel.TransportModeId = this.f.TransportModeId.value;
      //this.TransportModel.BranchId = this.BranchId;
      //this.TransportModel.CompId = this.CompId;
      this.TransportModel.AssignTransMId = this.assigntransportMid;
      this.TransportModel.InvoiceId = this.invoiveId;
      if (this.isFlag == AppCode.byhandstring) {
        this.TransportModel.PersonName = this.f.PersonName.value;
        this.TransportModel.PersonAddress = this.f.PersonAddress.value;
        this.TransportModel.PersonMobileNo = this.f.PersonMobileNo.value;
        this.f.AssignedTransport.setValue('');
        this.f.DeliveryRemark.disable();
      }
      this.TransportModel.OtherDetails = this.f.OtherDetails.value;
      if (this.isFlag == AppCode.localstring) {
        this.TransportModel.TransporterId = this.f.AssignTransport.value;
        this.TransportModel.Delivery_Remark = this.f.DeliveryRemark.value;
        this.f.AssignCourier.setValue('0');
      } else {
        this.TransportModel.TransporterId = this.f.AssignedTransport.value;
      }
      if (this.isFlag == AppCode.othercitystring) {
        this.TransportModel.CourierId = this.f.AssignCourier.value;
      }
      this.TransportModel.Addedby = String(this.UserId);
      this._orderDispatchService.UpdateAssignedTransportMode_Service(this.TransportModel)
        .subscribe((data: any) => {
          if (data === AppCode.SuccessStatus) {
            this._ToastrService.success(AppCode.msg_updateSuccess)
            this.ClearForm();
          } else if (data === AppCode.ExistsStatus) {
            this._ToastrService.warning(AppCode.msg_exist);
          } else {
            this._ToastrService.error(data);
            this.ClearForm();
          }
        },
          (error: any) => {
            console.error("Error:" + JSON.stringify(error));
            this.ClearForm();
          });
    }
  }
  // Clear Form
  ClearForm() {
    this.modalService.dismissAll();
    this.AssignTransportForm.reset();
    this.f.TransportModeId.setValue(1);
    this.GetAssignedTransportList(this.DataModel);
  }
  //Search - Apply Filter
  applyFilter() {
    this.isLoading = true;
    // this.searchModel = this.searchModel.trim(); // Remove whitespace
    this.searchModel = this.searchModel.toLowerCase(); // Datasource defaults to lowercase matches
    this.DataSource.filter = this.searchModel;
    this.isLoading = false;
    this.chRef.detectChanges(); // IMMEDIATE ACTION FIRED
  }
  ValidationMobile(event:any){
      this.commonCode.numberOnly(event)
  }
}
