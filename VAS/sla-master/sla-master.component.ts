import { ChangeDetectorRef, Component, OnInit, ViewChild } from '@angular/core';
import { MatPaginator, MatSort, MatTableDataSource } from '@angular/material';
import { VasService } from '../../../../services/VAS/vas.service';
import { AbstractControl, FormBuilder, FormGroup, Validators } from '@angular/forms';
import { VASModel } from '../../../../models/VAS/vas.model';
import { ToastrService } from 'ngx-toastr';
import { roundWithPrecision } from 'chartist';

@Component({
  selector: 'kt-sla-master',
  templateUrl: './sla-master.component.html',
  styleUrls: ['./sla-master.component.scss']
})
export class SLAMasterComponent implements OnInit {

  displayed = ['SrNo', 'SLADesc', 'SLAValue', 'Status', 'Action'];
  @ViewChild(MatPaginator) paginator: MatPaginator;
  @ViewChild(MatSort) sort: MatSort;
  public DataSource = new MatTableDataSource<any>();
  SLAModel: VASModel
  isLoading: boolean = false;
  SLAForm: FormGroup;
  defaultform: any = {
    Desc: '',
    SLAValue: ''
  };
  SLAId: number = 0;
  SLADesc: string = '';
  SLAValue: string = '';
  IsActive: number = 1;
  UserId: number = 0;
  PageState: string = "Add";
  message: string = "Data Saved Successfully.";

  constructor(private chRef: ChangeDetectorRef, private service: VasService, private fb: FormBuilder, private toastr: ToastrService) { }

  ngOnInit() {
    let user = JSON.parse(sessionStorage.getItem('LoginData'));
    this.UserId = user.UserId;
    this.GetSLAList();
    this.initForm();
  }

  initForm() {
    this.SLAForm = this.fb.group({
      Discription: [
        this.defaultform.Discription,
        Validators.compose([
          Validators.required,
          Validators.maxLength(50),
        ]),
      ],
      SLAValue: [
        this.defaultform.SLAValue,
        Validators.compose([
          Validators.required,
          Validators.maxLength(20),
        ]),
      ],
    });
  }

  GetSLAList() {
    this.isLoading = true;
    this.service.GetSLAList(2)
      .subscribe((data) => {
        if (data.length > 0 && data != null && data != "" && data != undefined) {
          this.DataSource.data = data;
          this.DataSource.paginator = this.paginator;
          this.DataSource.sort = this.sort;
          this.isLoading = false;
          this.chRef.detectChanges();
        } else {
          this.DataSource.data = [];
          this.isLoading = false;
          this.chRef.detectChanges();
        }
      });
  }

  numberOnly(event: any) {
    const pattern = /[0-9]/;
    let inputChar = String.fromCharCode(event.charCode);
    if (event.keyCode != 8 && !pattern.test(inputChar)) {
      event.preventDefault();
    }
  }

  SLAAddEdit() {
    if (this.SLADesc == "" && (this.PageState == 'Add' || this.PageState == 'EDIT')) {
      this.toastr.warning('Please Add Discription', 'SLA Master', { timeOut: 2000 });
      return;
    }
    if (this.SLAValue == "" && (this.PageState == 'Add' || this.PageState == 'EDIT')) {
      this.toastr.warning('Please Add Value', 'SLA Master', { timeOut: 2000 });
      return;
    }
    let model = {
      "SLAId": this.SLAId,
      'SLADesc': this.SLADesc,
      'SLAValue': this.SLAValue,
      'IsActive': this.IsActive,
      'AddedBy': this.UserId,
      'Action': this.PageState
    }
    this.service.AddEditSLA(model).subscribe(data => {
      if (data === -1) {
        this.toastr.error('Something went Wrong!', 'SLA Master', { timeOut: 2000 });
      } else if (data > 0) {
        this.clearData();
        this.GetSLAList();
        this.toastr.success(this.message, 'SLA Master', { timeOut: 2000 });
      }
    });
  }

  GetData(row: any) {
    this.SLAId = row.SLAId;
    this.SLADesc = row.SLADesc;
    this.SLAValue = row.SLAValue;
    this.PageState = 'EDIT';
    this.message = 'Data Updated Successfully.'
  }

  clearData() {
    this.SLAId = 0;
    this.SLADesc = '';
    this.SLAValue = '';
    this.PageState = 'Add';
  }

  ChangeStatus(row: any) {
    this.SLAId = row.SLAId;
    if (row.IsActive == 1) {
      this.IsActive = 0;
    }
    else {
      this.IsActive = 1;
    }
    this.PageState = 'STATUS';
    this.message = 'Status Changed Successfully.'
    this.SLAAddEdit();
  }

  DeleteSLA(row: any) {
    this.SLAId = row.SLAId;
    this.PageState = 'DELETE';
    this.message = 'Record Deleted Successfully.'
    this.SLAAddEdit();
  }
}
