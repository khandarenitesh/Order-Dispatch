import { ChangeDetectorRef, Component, ElementRef, OnInit, ViewChild } from '@angular/core';

import { MatPaginator } from '@angular/material/paginator';
import { MatSort } from '@angular/material/sort';
import { MatTableDataSource } from '@angular/material/table';

import { ToastrService } from 'ngx-toastr';

import { OrderDispatchService } from '../Services/order-dispatch.service';

import { AppCode } from '../../../app.code';

import Swal from 'sweetalert2';

@Component({
  selector: 'app-import-lr-details',
  templateUrl: './import-lr-details.component.html',
  styleUrls: ['./import-lr-details.component.scss']
})
export class ImportLRDetailsComponent implements OnInit {

  Title: string = 'Import LR Data';
  importLRDerails = ['SrNo', 'InvNo', 'NoOfBox', 'StockistNo', 'StockistName', 'LRNo', 'LRDatestring', 'LRBox'];
  @ViewChild('paginator') paginator: MatPaginator;
  @ViewChild('Sort') Sort: MatSort;
  public DataSource = new MatTableDataSource<any>();

  @ViewChild('fileInput') fileInput: ElementRef; //file
  isLoading: boolean = false;
  UserId: number = 0;
  BranchId: number = 0;
  CompanyId: number = 0;
  LRDate: string = "";
  DataModel: any;
  currentDate: Date;
  ListTitle: string = "";
  searchModel: string = '';

  constructor(private _OrderDispatchService: OrderDispatchService,
    private chRef: ChangeDetectorRef,
    private toastr: ToastrService) {
    this.currentDate = new Date();
  }

  ngOnInit(): void {
    this.ListTitle = "List View"
    var result = AppCode.getUser();
    this.UserId = result.UserId;
    this.BranchId = result.BranchId;
    this.CompanyId = result.CompanyId;
    this.DataModel = {
      BranchId: this.BranchId,
      CompId: this.CompanyId,
      LRDate: this.currentDate
    }
    this.GetLRList(this.DataModel);
  }

  // Select File on change event occurs
  onChange() {
    let file = this.fileInput.nativeElement.files[0];
    if (file.name.split('.').pop() !== "xls" || file.name.split('.').pop() !== "xlsx") {

    } else {
      this.toastr.error("Accepts only xls or .xlsx");
      this.fileInput.nativeElement.value = null;
    }
  }

  // Upload LR Data
  onUpload() {
    this.isLoading = true;
    let formData = new FormData();
    let file = this.fileInput.nativeElement.files[0];
    if (file === undefined) {
      this.toastr.error('Please Select File');
      this.isLoading = false;
      this.chRef.detectChanges();
    } else if (file != undefined && (file.name.split('.').pop() === "xls" || file.name.split('.').pop() === "xlsx")) {
      formData.append('upload', file);
      this._OrderDispatchService.ImportLRData(String(this.UserId), formData)
        .subscribe((data: any) => {
          // if (data.length > 0) {
          //   this.toastr.success("Uploaded SuccessFully", "Import LR Data");
          //   this.clearFile();
          //   this.GetLRList(this.DataModel);
          //   this.chRef.detectChanges();
          // } else if (data === -1) {
          //   this.toastr.warning("LR Data Already Exists.", "Import LR Data");
          //   this.clearFile();
          // } else {
          //   this.toastr.error("Uploaded Failed", "Import LR Data");
          //   this.clearFile();
          // }
          
          if (data === AppCode.SuccessStatus) {
            Swal.fire({
              icon: 'success',
              title: 'Import LR Data Uploaded SuccessFully!'
            })
          } else if (data === "Invoice Details are invalid imported") {
            Swal.fire({
              icon: 'error',
              text: data
            })
          } else if (data === "No Record Found") {
            Swal.fire({
              icon: 'error',
              text: data
            })
          } else if (data === "No Record Found in Excel file") {
            Swal.fire({
              icon: 'error',
              text: data
            })
          } else if (data === "Invalid Excel File") {
            Swal.fire({
              icon: 'error',
              text: data
            })
          } else {
            Swal.fire({
              icon: 'error',
              text: data
            })
          }
          this.clearFile();
          this.GetLRList(this.DataModel);
        });
    } else {
      this.toastr.warning('File is Invalid (Accepts only xls or .xlsx)');
      this.clearFile();
    }
  }

  //get LR List
  GetLRList(DataModel: any) {
    this.isLoading = true;
    this._OrderDispatchService.getLR_Service(DataModel).subscribe((data: any) => {
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
  // Clear File
  clearFile() {
    this.fileInput.nativeElement.value = null;
    this.isLoading = false;
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
