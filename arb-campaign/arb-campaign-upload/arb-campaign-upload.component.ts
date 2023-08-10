import { Component, OnInit, ViewChild, ElementRef, AfterViewInit, ChangeDetectorRef, OnDestroy } from '@angular/core';

import { FormControl } from '@angular/forms';

// Models
import { DistributorModel } from '../../../../models/DBCCampaignUpload/dbc-campaign-upload.model';

// Services
import { DBCCampaignUploadService } from '../../../../services/DBCCampaignUpload/dbc-campaign-upload.service';
import { ToastrService } from 'ngx-toastr';
import { Subscription, Observable } from 'rxjs';
import { startWith, map } from 'rxjs/operators';

@Component({
  selector: 'kt-arb-campaign-upload',
  templateUrl: './arb-campaign-upload.component.html',
  styleUrls: ['./arb-campaign-upload.component.scss']
})
export class ArbCampaignUploadComponent implements OnInit, AfterViewInit, OnDestroy {
  @ViewChild('fileInput') fileInput: ElementRef;
  isLoading: boolean = false;
  private unsubscribe: Subscription[] = [];
  SelectedDistributor: DistributorModel = new DistributorModel();
  filteredDistributorOptions: Observable<DistributorModel[]>;
  myControlDistributor = new FormControl();
  DDLDistributorList: DistributorModel[];
  postDistributorModal: any;

  constructor(private dbcCampaignUploadService: DBCCampaignUploadService, private toastr: ToastrService, private chRef: ChangeDetectorRef) { }

  ngOnInit() {
    this.clearFile();
    this.BindAllDDLDistributorList();
  }

  // Get Distributor List
  BindAllDDLDistributorList() {
    this.postDistributorModal = {
      'DistributorId': 0
    };
    this.unsubscribe.push(this.dbcCampaignUploadService.GetDistDetails(this.postDistributorModal)
      .subscribe((data) => {
        this.DDLDistributorList = data.DistributorList;
        this.filteredDistributorOptions = this.myControlDistributor.valueChanges
          .pipe(startWith<string | DistributorModel>(''),
            map(value => typeof value === 'string' ? value : value !== null ? value.DistributorName : null),
            map(DistributorName => DistributorName ? this.filterDistributor(DistributorName) : this.DDLDistributorList.slice()));
        this.chRef.detectChanges();
      }, () => {
      }));
  }

  private filterDistributor(name: string): DistributorModel[] {
    const filterDistributorValue = name.toLowerCase();
    return this.DDLDistributorList.filter((option) => option.DistributorName.toLowerCase().includes(filterDistributorValue) ||
      option.JDEDistributorCode.toLocaleLowerCase().includes(filterDistributorValue));
  }

  displayFnDistributor(user?: DistributorModel): string | undefined {
    return user ? user.DistributorName + "( " + user.JDEDistributorCode + " ) " : undefined;
  }

  onChange() {
    let file = this.fileInput.nativeElement.files[0];
    if (file.name.split('.').pop() !== "xls" || file.name.split('.').pop() !== "xlsx") {

    } else {
      this.toastr.error("Accepts only xls or .xlsx");
      this.fileInput.nativeElement.value = null;
    }
  }

  // ARB Campaign Upload Excel File
  uploadExcelFile() {
    this.isLoading = true;
    if (this.SelectedDistributor != null && this.SelectedDistributor != undefined && this.SelectedDistributor.DistributorId > 0) {
      let formData = new FormData();
      let file = this.fileInput.nativeElement.files[0];
      if (file === undefined) {
        this.toastr.error('Please Select File');
        this.isLoading = false;
      } else if (file != undefined && (file.name.split('.').pop() === "xls" || file.name.split('.').pop() === "xlsx")) {
        formData.append('upload', file);
        this.dbcCampaignUploadService.ARBUploadExcel(this.SelectedDistributor.DistributorId, formData).subscribe((data: any) => {
          if (data === "-1") {
            this.toastr.error("Distributor Data Already Exists.", "ARB Campaign Upload");
          } else if (data.length > 0) {
            this.toastr.success("Uploaded SuccessFully", "ARB Campaign");
          } else {
            this.toastr.error("Uploaded Failed", "ARB Campaign");
          }
          this.clearFile();
        });
      } else {
        this.toastr.warning('File is Invalid (Accepts only xls or .xlsx)');
        this.isLoading = false;
        this.chRef.detectChanges();
      }
    } else {
      this.toastr.error('Please Select Distributor');
      this.isLoading = false;
      this.chRef.detectChanges();
    }
  }

  // Clear File
  clearFile() {
    this.SelectedDistributor = null;
    this.fileInput.nativeElement.value = null;
    this.isLoading = false;
    this.chRef.detectChanges();
  }

  // Set side menu close
  ngAfterViewInit() {
    this.dbcCampaignUploadService.Toggler = new KTToggle('kt_aside_toggler', this.dbcCampaignUploadService.toggleOptions);
    this.dbcCampaignUploadService.DivToggleWidth = '100%';
    this.dbcCampaignUploadService.IsModelOn = false;
    this.dbcCampaignUploadService.displayValue = false;
    this.dbcCampaignUploadService.Toggler.toggleOn();
    $('#kt_aside_close_btn').click();
    setTimeout(() => {
      this.dbcCampaignUploadService.OpenToggle = true;
      this.dbcCampaignUploadService.Toggler.toggleOn();
      $('#kt_aside_close_btn').click();
    }, 500);
  }

  ngOnDestroy() {
    this.unsubscribe.forEach(sb => sb.unsubscribe());
  }

}
