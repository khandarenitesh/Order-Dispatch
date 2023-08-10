import { ToastrService } from 'ngx-toastr';
import { Component, OnInit, ChangeDetectorRef, ViewChild, ElementRef } from '@angular/core';
import { VasService } from '../../../../services/VAS/vas.service';
import { MatPaginator, MatTableDataSource, MatSort } from '@angular/material';
import * as XLSX from 'xlsx';

@Component({
	selector: 'kt-booking-report',
	templateUrl: './booking-report.component.html',
	styleUrls: ['./booking-report.component.scss']
})
export class BookingReportComponent implements OnInit {
	DistributorCode: string = '';
	isLoading: boolean = false;
	FromDate: any = null;
	Todate: any = null;
	Flag: string = 'ALL';
	searchModel: any;
	minDate = new Date();
	maxDate = new Date();
	DataSource = new MatTableDataSource<any>();
	ColumnArray = ['SrNo', 'ConsumerNo', 'ConsumerName', 'MobNo', 'OrderNo', 'OrderDate', 'ActualDelDate']
	@ViewChild('TABLE') table: ElementRef;
	@ViewChild('paginator') paginator: MatPaginator;
	@ViewChild('sort1') sort1: MatSort;

	constructor(private service: VasService, private chRef: ChangeDetectorRef, private toastermsg: ToastrService) { }

	ngOnInit() {
		let user = JSON.parse(sessionStorage.getItem('LoginData'));
		this.DistributorCode = user.UserName;
		this.FromDate = new Date();
		this.Todate = new Date();

		//Get Booking Report List (FromDate and Todate is null)
		// this.GetBookingReportList();
	}

	//Get Booking Report List Selecting for FromDate To Todate
	GetBookingReportList() {
		const model = {
			'DistributorCode': this.DistributorCode,
			'FromDate': this.FromDate,
			'Todate': this.Todate,
			'Flag': this.Flag
		}
		if (this.FromDate > this.Todate) {
			this.toastermsg.warning('From Date Should Be Greater Than To Date!');
			return;
		}
		this.isLoading = true;
		this.service.GetBookingReport_service(model)
			.subscribe((data: any) => {
				if (data.length > 0) {
					this.DataSource.data = data;
					this.DataSource.paginator = this.paginator;
					this.DataSource.sort = this.sort1;
				} else {
					this.DataSource.data = [];
				}
				this.FromDate = new Date();
				this.Todate = new Date();
				this.isLoading = false;
				this.chRef.detectChanges();
				(error: any) => {
					console.log(error);
					this.isLoading = false;
					this.chRef.detectChanges();
				}
			});
	}

	// Search - Data in table
	applyFilter() {
		this.isLoading = true;
		this.searchModel = this.searchModel.toLowerCase();
		this.DataSource.filter = this.searchModel;
		this.isLoading = false;
		this.chRef.detectChanges();
	}

	//export to excel
	exportAsExcel() {
		this.isLoading = true;
		const ws: XLSX.WorkSheet = XLSX.utils.table_to_sheet(this.table.nativeElement);
		const wb: XLSX.WorkBook = XLSX.utils.book_new();
		XLSX.utils.book_append_sheet(wb, ws, 'All Data Export');
		XLSX.writeFile(wb, 'BookingReport.xlsx');
		this.isLoading = false;
		this.chRef.detectChanges();
	}

}
