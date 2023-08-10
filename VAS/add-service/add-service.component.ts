import { ConsumerModel } from './../../../../models/VAS/Consumer.model';
import { Component, OnInit, ChangeDetectorRef, ViewChild } from '@angular/core';
import { VasService } from '../../../../services/VAS/vas.service';
import { ToastrService } from 'ngx-toastr';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { Observable } from 'rxjs';
import { startWith, map } from 'rxjs/operators';
import { FormControl } from '@angular/forms';
import { MatPaginator, MatSort, MatTableDataSource } from '@angular/material';
import { VASCounts } from '../../../../models/VAS/VASCounts.model';

export class s {
	'ConsumerNo': '';
}
@Component({
	selector: 'kt-add-service',
	templateUrl: './add-service.component.html',
	styleUrls: ['./add-service.component.scss']
})
export class AddServiceComponent implements OnInit {

	DistributorCode: string = "";
	ConsumerList: ConsumerModel[];
	myControlGroup = new FormControl();
	SelectedConsumer: ConsumerModel = new ConsumerModel();
	filteredGroupOptions: Observable<ConsumerModel[]>;
	ConsumerName: string = "";
	ConsumerContact: string = "";
	SRId: number = 0;
	DistributorId: number = 0;
	UniqueConsumerId: number = 0;
	SReqDate: Date = new Date();
	MechanicName: string = '';
	SRtatus: number = 0;
	Action: string = 'ADD';
	ConsumerNo: string = '';
	message: string = 'Data Saved Successfully!';
	columns = ['SrNo', 'ConsumerNo', 'ConsumerName', 'MobileNo', 'SReqDate', 'AssignTo', 'Action'];
	@ViewChild(MatPaginator) paginator: MatPaginator;
	@ViewChild(MatSort) sort: MatSort;
	public DataSource = new MatTableDataSource<any>();
	ServiceDate: Date = new Date();
	SerMechanicName: string = '';
	isLoading: boolean = false;
	AddServiceModal: any;

	Counts: VASCounts = new VASCounts();
	TotalConsumers: number = 0;

	constructor(private chRef: ChangeDetectorRef, private service: VasService, private toastr: ToastrService, private modalService: NgbModal) { }

	ngOnInit() {
		let user = JSON.parse(sessionStorage.getItem('LoginData'));
		this.DistributorCode = user.UserName;
		this.GetVASConsumerList();
		this.GetServiceReqList();
		this.GetVASCount();
	}

	GetVASConsumerList() {
		this.isLoading = true;
		this.service.GetVASConsumerList_Service(this.DistributorCode).subscribe((data) => {
			if (data.length > 0 && data != null && data != "" && data != undefined) {
				this.ConsumerList = data;
				this.filteredGroupOptions = this.myControlGroup.valueChanges
					.pipe(startWith<string | ConsumerModel>(''),
						map(value => typeof value === 'string' ? value : value !== null ? value.ConsumerNo : null),
						map(ConsumerNo => ConsumerNo ? this.filterCons(ConsumerNo) : this.ConsumerList.slice()));
				this.isLoading = false;
				this.chRef.detectChanges();
			} else {
				this.chRef.detectChanges();
			}
		})
	}

	GetServiceReqList() {
		this.isLoading = true;
		this.service.ServiceReqList_Service(this.DistributorCode).subscribe((data) => {
			if (data.length > 0 && data != null && data != "" && data != undefined) {
				this.DataSource.data = data;
				this.DataSource.paginator = this.paginator;
				this.DataSource.sort = this.sort;
				this.isLoading = false;
				this.chRef.detectChanges();
			} else {
				this.DataSource.data = [];
				this.chRef.detectChanges();
			}
		})
	}

	GetVASCount() {
		this.isLoading = true;
		this.service.VASCount_Service(this.DistributorCode).subscribe((data) => {
			this.afterCount(data);
			this.chRef.detectChanges();
		})
	}

	afterCount(data) {
		this.isLoading = false;
		this.Counts = data;
		this.chRef.detectChanges();
	}

	private filterCons(name: string): ConsumerModel[] {
		const filterConsValue = name.toLowerCase();
		return this.ConsumerList.filter(option => option.ConsumerNo.toLowerCase().includes(filterConsValue));
	}

	displayFnGroup(user?: ConsumerModel): string | undefined {
		return user ? user.ConsumerNo : undefined;
	}

	onChangeConsumer() {
		if (this.SelectedConsumer.ConsumerNo !== undefined) {
			this.ConsumerName = this.SelectedConsumer.ConsumerName;
			this.ConsumerContact = this.SelectedConsumer.MobileNo;
			this.DistributorCode = this.SelectedConsumer.DistributorCode;
			this.UniqueConsumerId = this.SelectedConsumer.UniqueConsumerId;
		}
	}

	saveSerReq() {
		this.isLoading = true;
		let model = {
			'SRId': this.SRId,
			'DistributorCode': this.DistributorCode,
			'ConsumerNo': this.SelectedConsumer.ConsumerNo,
			'UniqueConsumerId': this.UniqueConsumerId,
			'SReqDate': this.SReqDate,
			'AssignTo': this.MechanicName,
			'SRStatus': this.SRtatus,
			'Action': this.Action
		}
		this.saveAPICall(model);
	}

	saveAPICall(model: any) {
		this.service.AddEditServiceReq_Service(model).subscribe((data) => {
			if (data === -1) {
				this.toastr.error('Something went Wrong!', 'VAS Activation', { timeOut: 2000 });
			} else if (data > 0) {
				this.clearData();
				this.GetServiceReqList();
				this.GetVASCount();
				this.isLoading = false;
				this.modalService.dismissAll();
				this.toastr.success(this.message, 'VAS Activation', { timeOut: 2000 });
			}
		})
	}

	clearData() {
		this.SelectedConsumer = null;
		this.ConsumerName = '';
		this.ConsumerContact = '';
		this.SReqDate = new Date();
		this.MechanicName = '';
	}

	updateServicePopup(row: any, content: any) {
		this.AddServiceModal = this.modalService.open(content, {
			centered: true,
			size: 'md',
			backdrop: 'static'
		})
		this.SRId = row.SRId;
		this.DistributorCode = row.DistributorCode;
		this.ConsumerNo = row.ConsumerNo;
		this.UniqueConsumerId = row.UniqueConsumerId;
	}

	updateServiceReq() {
		this.isLoading = true;
		if (this.SRtatus == 1) {
			if (this.SerMechanicName == '') {
				this.toastr.warning('Please Enter Mechanic Name!', 'VAS Activation', { timeOut: 2000 });
				return;
			}
			this.message = 'Service Request Status Updated Successfully!';
		}
		else {
			this.message = 'Service Request Canceled Successfully!';
		}
		let model = {
			'SRId': this.SRId,
			'DistributorCode': this.DistributorCode,
			'ConsumerNo': this.ConsumerNo,
			'UniqueConsumerId': this.UniqueConsumerId,
			'SReqDate': this.ServiceDate,
			'AssignTo': this.SerMechanicName,
			'SRStatus': this.SRtatus,
			'Action': 'DONE'
		}
		this.saveAPICall(model);
	}

	setData(row: any) {
		this.SRId = row.SRId;
		this.SelectedConsumer = new ConsumerModel();
		this.SelectedConsumer.ConsumerNo = String(row.ConsumerNo);
		this.SelectedConsumer.ConsumerName = row.ConsumerName;
		this.SelectedConsumer.MobileNo = row.MobileNo;
		this.SelectedConsumer.DistributorCode = row.DistributorCode;
		this.ConsumerName = row.ConsumerName;
		this.ConsumerContact = row.MobileNo;
		this.DistributorCode = row.DistributorCode;
		this.UniqueConsumerId = row.UniqueConsumerId;
		this.SReqDate = row.SReqDate;
		this.MechanicName = row.AssignTo;
		this.message = 'Data Updated Successfully!';
		this.Action = 'EDIT';
	}

	DeleteSerReq(row: any) {
		this.isLoading = true;
		let model = {
			'SRId': row.SRId,
			'Action': 'DELETE',
			'SReqDate': this.SReqDate,
		}
		this.SRId = row.SRId;
		this.Action = 'DELETE';
		this.message = 'Record Deleted Successfully!';
		this.saveAPICall(model);
	}
}
