import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { NgForm } from '@angular/forms';
import { ChangeDetectorRef, Component, OnInit, ViewChild } from '@angular/core';
import { ToastrService } from 'ngx-toastr';
import { VasService } from '../../../../services/VAS/vas.service';
import { ConsumerModel } from '../../../../models/VAS/Consumer.model';
import moment = require('moment');
import { MatPaginator, MatSort, MatTableDataSource } from '@angular/material';
import { VASCounts } from '../../../../models/VAS/VASCounts.model';

@Component({
	selector: 'kt-vas-activation',
	templateUrl: './vas-activation.component.html',
	styleUrls: ['./vas-activation.component.scss']
})
export class VASActivationComponent implements OnInit {

	public _ConsumerModel: ConsumerModel = new ConsumerModel();

	SACode: number = 0;
	DistributorId: number = 0;
	DistributorCode: string = "";
	DistributorName: string = "";
	UniqueConsumerId: string = "0";
	ConsumerNo: string = "";
	ConsumerName: string = "";
	ConsumerContact: string = "";
	AreaName: string = "";
	IsRegistered: string = "Y";
	ConsAddr: string = "";
	RegistrationDate: any;
	Status: number = 1;
	Action: string = "ADD";
	message: string = "Record Added Successfully.";
	disable: boolean = false;
	pageState: string = 'Add';
	isLoading: boolean = false;
	ConsumerList: any[] = [];
	ConsumerData: any[] = [];

	columns = ['SrNo', 'ConsumerNo', 'ConsumerName', 'MobileNo', 'RegistrationDate', 'Status', 'Action'];
	@ViewChild(MatPaginator) paginator: MatPaginator;
	@ViewChild(MatSort) sort: MatSort;
	public DataSource = new MatTableDataSource<any>();
	@ViewChild('AddService') AddService: NgForm;
	Counts: VASCounts = new VASCounts();

	constructor(private chRef: ChangeDetectorRef, private service: VasService, private toastr: ToastrService, private modalService: NgbModal) { }

	ngOnInit() {
		let user = JSON.parse(sessionStorage.getItem('LoginData'));
		this.DistributorId = user.refNo;
		this.DistributorCode = user.UserName;
		this.DistributorName = user.DisplayName;
		this.RegistrationDate = new Date();
		this.GetVASConsumerList();
		this.GetVASActiovationCount();
	}

	GetVASConsumerList() {
		this.isLoading = true;
		this.service.GetVASConsumerList_Service(this.DistributorCode).subscribe((data) => {
			if (data.length > 0 && data != null && data != "" && data != undefined) {
				this.ConsumerData = data;
				this.DataSource.data = data;
				this.DataSource.paginator = this.paginator;
				this.DataSource.sort = this.sort;
				this.GetVASActiovationCount();
				this.isLoading = false;
				this.chRef.detectChanges();
			} else {
				this.DataSource.data = [];
				this.chRef.detectChanges();
			}
		})
	}

	numberOnly(event: any) {
		const pattern = /[0-9]/;
		let inputChar = String.fromCharCode(event.charCode);
		if (event.keyCode != 8 && !pattern.test(inputChar)) {
			event.preventDefault();
		}
	}

	savedata() {
		this.isLoading = true;
		if (this.ConsumerNo == "" && this.Action !== 'STATUS') {
			this.toastr.warning('Please Enter Consumer Number', 'VAS Activation', { timeOut: 2000 });
		}
		else if (this.ConsumerName == "" && this.Action !== 'STATUS') {
			this.toastr.warning('Please Enter Consumer Name', 'VAS Activation', { timeOut: 2000 });
		}
		else if (this.ConsumerContact == "" && this.Action !== 'STATUS') {
			this.toastr.warning('Please Enter Consumer Name', 'VAS Activation', { timeOut: 2000 });
		}
		else {
			let model = {
				'SACode': this.SACode,
				'DistributorId': this.DistributorId,
				'DistributorCode': this.DistributorCode,
				'DistributorName': this.DistributorName,
				'UniqueConsumerId': this.UniqueConsumerId,
				'ConsumerNo': this.ConsumerNo,
				'MobileNo': this.ConsumerContact,
				'ConsumerName': this.ConsumerName,
				'AreaName': this.AreaName,
				'ConsumerAddress': this.ConsAddr,
				'IsRegistered': this.IsRegistered,
				'RegistrationDate': this.RegistrationDate,
				'Status': this.Status,
				'Action': this.Action
			}
			this.service.AddEditConsumer(model).subscribe(data => {
				if (data === -1) {
					this.isLoading = false;
					this.toastr.error('Something went Wrong!', 'VAS Activation', { timeOut: 2000 });
				} else if (data > 0) {
					this.clearData();
					this.GetVASConsumerList();
					this.isLoading = false;
					this.toastr.success(this.message, 'VAS Activation', { timeOut: 2000 });
				}
			});
		}
	}

	clearData() {
		this.ConsumerNo = "";
		this.ConsumerName = "";
		this.ConsumerContact = "";
		this.RegistrationDate = new Date();
		this.AreaName = "";
		this.ConsAddr = "";
		this.Action = "ADD";
		this.disable = false;
	}

	setdata(row: any) {
		this.disable = true;
		this.SACode = row.SACode;
		this.DistributorId = row.DistributorId;
		this.DistributorCode = row.DistributorCode;
		this.DistributorName = row.DistributorName;
		this.UniqueConsumerId = row.UniqueConsumerId;
		this.ConsumerNo = row.ConsumerNo;
		this.ConsumerContact = row.MobileNo;
		this.ConsumerName = row.ConsumerName;
		this.AreaName = row.AreaName;
		this.ConsAddr = row.ConsumerAddress;
		this.IsRegistered = row.IsRegistered;
		this.RegistrationDate = row.RegistrationDate;
		this.Status = row.Status;
		this.Action = 'EDIT';
		this.message = 'Data Upadated Successfully!';
	}

	changeStatus(row: any) {
		this.isLoading = true;
		if (row.Status == 1) {
			this.Status = 0;
		}
		if (row.Status == 0) {
			this.Status = 1;
		}
		this.DistributorCode = row.DistributorCode;
		this.ConsumerNo = row.ConsumerNo;
		this.Action = 'STATUS';
		this.message = 'Status Changed Successfully!'
		this.savedata();
	}

	GetVASActiovationCount() {
		this.isLoading = true;
		this.service.VASCount_Service(this.DistributorCode).subscribe((data) => {
			this.afterCount(data);
			this.chRef.detectChanges();
		})
	}

	afterCount(data) {
		this.Counts = data;
		this.isLoading = false;
		this.chRef.detectChanges();
	}

	filterData(Flag: any) {
		if (this.DataSource.data !== null || this.DataSource.data !== undefined) {
			if (Flag === 'All') {
				this.ConsumerList = this.ConsumerData;
			}
			else if (Flag === 'Active') {
				this.ConsumerList = this.ConsumerData.filter(x => x.Status === 1)
			}
			else if (Flag === 'Expired') {
				this.ConsumerList = this.ConsumerData.filter(x => x.Status === 2)
			}
			this.DataSource = new MatTableDataSource(this.ConsumerList);
			this.DataSource.paginator = this.paginator;
			this.DataSource.sort = this.sort;
			this.chRef.detectChanges();
		}
	}

}
