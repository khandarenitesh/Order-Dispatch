import { Component, OnInit, ChangeDetectorRef, ViewChild } from '@angular/core';
import { AppCode } from '../../../app.code';
import { MatPaginator } from '@angular/material/paginator';
import { MatSort } from '@angular/material/sort';
import { MatTableDataSource } from '@angular/material/table';
import { Router } from '@angular/router';
import { ToastrService } from 'ngx-toastr';
import { SharedService } from '../../../SharedServices/shared.service';
import { OrderDispatchService } from '../Services/order-dispatch.service';
import { InvoiceModel } from './../Models/invoice-model';

@Component({
  selector: 'app-generate-sticker',
  templateUrl: './generate-sticker.component.html',
  styleUrls: ['./generate-sticker.component.scss']
})
export class GenerateStickerComponent implements OnInit {

  DisplayInvoiceData = ['SrNo', 'InvoiceNo', 'stockistNo', 'stockistName', 'City', 'InvAmount', 'NoOfBox', 'TransporterName', 'Actions'];


  @ViewChild('paginator') paginator: MatPaginator;
  @ViewChild('Sort') Sort: MatSort;
  public DataSource = new MatTableDataSource<any>();
  isLoading: boolean = false;
  UserId: number = 0;
  BranchId: number = 0;
  CompId: number = 0;
  invoicemodel: InvoiceModel;
  searchModel: string = '';
  DataModel: any;

  constructor(private router: Router, private _SharedService: SharedService,
    private chRef: ChangeDetectorRef, private _ToastrService: ToastrService,
    private _orderDispatchService: OrderDispatchService) { }

  ngOnInit(): void {
    let obj = AppCode.getUser();
    this.UserId = obj.UserId;
    this.BranchId = obj.BranchId;
    this.CompId = obj.CompanyId;
    this.GetInvoiceList(this.BranchId, this.CompId, 0);
  }

  GetInvoiceList(BranchId: number, CompId: number, InvId: number) {
    this.isLoading = true;
    this._orderDispatchService.getInvoiceListForSticker_Service(BranchId, CompId, InvId)
      .subscribe((data: any) => {
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
          console.error(error);
        }
      });
  }

  // On Click Print Sticker Invoice Id wise show
  onClickPrintSticker(InvId: number) {
    this.DataModel = {
      InvId: InvId,
      BranchId: this.BranchId,
      CompId: this.CompId,
      Type: AppCode.printStickerTitle,
      AddedBy: String(this.UserId)
    }
    this.isLoading = true;
    console.log("onClickPrintSticker START:  " + JSON.stringify(this.DataModel));
    this._orderDispatchService.printSticker_Service(this.DataModel)
        .subscribe((data: any) => {
          console.log("data START:  " + JSON.stringify(data));
           if (data === AppCode.SuccessStatus) {
             this._ToastrService.success(AppCode.msg_printSticker);
           } else {
             this._ToastrService.error(AppCode.FailStatus);
           }
           this.isLoading = false;
           this.chRef.detectChanges();
           console.log("data END:  " + JSON.stringify(data));
          (error: any) => {
            console.error(error);
          }
        });
    console.log("onClickPrintSticker END:  " + JSON.stringify(this.DataModel));
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
