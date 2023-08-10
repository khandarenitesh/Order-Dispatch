import { Component, OnInit, ViewChild, ElementRef, AfterViewInit, ChangeDetectorRef } from '@angular/core';

// Services
import { ImportWatiDataService } from '../../../../services/ImportWatiData/import-wati-data.service';
import { ToastrService } from 'ngx-toastr';

@Component({
  selector: 'kt-import-wati-data-arb',
  templateUrl: './import-wati-data-arb.component.html',
  styleUrls: ['./import-wati-data-arb.component.scss']
})
export class ImportWatiDataArbComponent implements OnInit, AfterViewInit {
  @ViewChild('fileInput') fileInput: ElementRef;
  isLoading: boolean = false;

  constructor(private importWatiDataService: ImportWatiDataService, private toastr: ToastrService, private chRef: ChangeDetectorRef) { }

  ngOnInit() {
    
  }

  // Upload Excel File
  uploadExcelFile() {
    this.isLoading = true;
    let formData = new FormData(); 
    let file = this.fileInput.nativeElement.files[0];
    if(file === undefined) {
      this.toastr.error('Please Select File');
      this.isLoading = false;
    } else if (file != undefined && file != undefined && (file.name.split('.').pop() === "xls" || file.name.split('.').pop()  === "xlsx")) { 
      formData.append('upload', file);
      this.importWatiDataService.ARBExcelUpload(formData).subscribe((data: any) => {  
        if (data.length > 0) {
          this.toastr.success("Import WATi ARB Uploaded SuccessFully");
          this.clearFile();
        } else {
          this.toastr.error("Import WATi ARB Uploaded Failed");
          this.clearFile();
        }
      });
    } else {
      this.toastr.warning('File is Invalid (Accepts only xls or .xlsx)');
      this.clearFile();
    }
  }

  // Clear File
  clearFile() {
    this.fileInput.nativeElement.value = null;
    this.isLoading = false;
    this.chRef.detectChanges();
  }

  // Set side menu close
  ngAfterViewInit() {
    this.importWatiDataService.Toggler = new KTToggle('kt_aside_toggler', this.importWatiDataService.toggleOptions);
    this.importWatiDataService.DivToggleWidth = '100%';
    this.importWatiDataService.IsModelOn = false;
    this.importWatiDataService.displayValue = false;
    this.importWatiDataService.Toggler.toggleOn();
    $('#kt_aside_close_btn').click();
    setTimeout(() => {
      this.importWatiDataService.OpenToggle = true;
      this.importWatiDataService.Toggler.toggleOn();
      $('#kt_aside_close_btn').click();
    }, 500);
  }

}
