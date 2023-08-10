import { ChangeDetectorRef, Component, OnInit, ViewChild } from '@angular/core';
import { VasService } from '../../../../services/VAS/vas.service'
import { MatPaginator, MatTableDataSource, MatSort } from '@angular/material'
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { NgForm } from '@angular/forms';
import { ToastrService } from 'ngx-toastr';
import { VASCounts } from '../../../../models/VAS/VASCounts.model';


@Component({
	selector: 'kt-booking-details',
	templateUrl: './booking-details.component.html',
	styleUrls: ['./booking-details.component.scss'],
})

export class BookingDetailsComponent implements OnInit {

	displayedColumnsForApi = ['SRNo', 'ConsumerNo', 'ConsumerName', 'MobNo', 'OrderNo', 'OrderDate',
		'ActualDelDate', 'AssignTo', 'Action']
	@ViewChild(MatPaginator) paginator: MatPaginator
	@ViewChild('Sort') Sort: MatSort;
	public DataSource = new MatTableDataSource<any>()
	@ViewChild('DelboyAssignForm') DelboyAssignForm: NgForm;
	Counts: VASCounts = new VASCounts();

	maxDate = new Date();
	isLoading: boolean = false
	searchModel: string = ''
	DistributorCode: string = ''
	FromDate: any = null;
	Todate: any = null;
	Flag: string = 'PENDING';
	RefillPendingBookingModal: any;
	pageState: string = '';
	PkOrderId: number = 0;
	DistributorId: number = 0;
	DelBoyName: string = '';
	message: string = 'Assigned Successfully!';
	failed: string = 'Something went Wrong!';
	DistributorCode1:string="";
	constructor(private service: VasService, private chRef: ChangeDetectorRef, private modalService: NgbModal,
		private toastr: ToastrService) { }

	ngOnInit() {
		this.pageState = "Submit";
		let user = JSON.parse(sessionStorage.getItem('LoginData'))
		this.DistributorCode = user.refNo;
		this.DistributorCode1 = user.UserName;
		this.RefillPendingList();
		this.GetRefillVASCount();
	}

	//popup function
	DelBoyAssignPopup(row: any, content: any) {
		this.PkOrderId = row.PkOrderId;
		this.DistributorId = row.DistributorId;
		this.DistributorCode = row.DistributorCode;
		this.DelBoyName = "";
		this.RefillPendingBookingModal = this.modalService.open(content, {
			centered: true,
			size: 'sm',
			backdrop: 'static'
		})
	}

	//Save Data Delivery Boy Assign
	SaveDelboyAssign() {
		this.isLoading = true;
		let model = {
			'PkOrderId': this.PkOrderId,
			'DistributorCode': this.DistributorCode,
			'DelBoyName': this.DelBoyName
		}
		this.service.SaveDelboyAssign_Service(model)
			.subscribe((data: any) => {
				if (data > 0) {
					this.toastr.success(this.message, 'Delivery Boy', { timeOut: 2000 });
					this.modalService.dismissAll();
				} else if (data === -1) {
					this.toastr.error(this.failed, 'Delivery Boy Assign', { timeOut: 2000 });
				} this.RefillPendingList();
			}, (error: any) => {
				console.error(error);
				this.isLoading = false;
				this.chRef.detectChanges();
			});
	}

	//Get Refill Booking List
	RefillPendingList() {
		this.isLoading = true
		this.service.GetRefillPendingList(this.DistributorCode, this.FromDate, this.Todate, this.Flag).subscribe((data) => {
			if (data.length > 0) {
				this.DataSource.data = data
				this.DataSource.paginator = this.paginator
				this.DataSource.sort = this.Sort
				this.isLoading = false
				this.chRef.detectChanges()
			} else {
				this.DataSource.data = []
				this.isLoading = false
				this.chRef.detectChanges()
			}
		})
	}

	//Get Refill Booking Counts
	GetRefillVASCount() {
		this.isLoading = true;
		this.service.VASCount_Service(this.DistributorCode1).subscribe((data) => {
			if(data!==null || data!==undefined){
				this.afterCount(data);
			}
			this.chRef.detectChanges();
		})
	}

	afterCount(data) {
		this.isLoading = false;
		this.Counts = data;
		this.chRef.detectChanges();
	}

	//Search - Apply Filter
	applyFilter() {
		this.isLoading = true
		this.searchModel = this.searchModel.toLowerCase() //Datasource defaults to lowercase matches
		this.DataSource.filter = this.searchModel
		this.isLoading = false
		this.chRef.detectChanges()
	}
}
