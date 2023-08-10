import { Component, OnInit, OnDestroy, ChangeDetectorRef, ViewChild, AfterViewInit } from '@angular/core';

import { FormControl } from '@angular/forms';

import { MatPaginator, MatSort, MatTableDataSource, MatCheckboxChange } from '@angular/material';

import { NgbModal, NgbModalRef } from '@ng-bootstrap/ng-bootstrap';

import {
	SBCConfigDetailsListModel, ConfigurationDetailsMasterModel, SBCConfigDetailsModel, DistributorModel, TemplateModel,
	GroupModel
} from '../../../../models/ConfigurationDetails/configuration-details.model';

import { ToastrService } from 'ngx-toastr';
import { Subscription, Observable, timer } from 'rxjs';
import { switchMap, startWith, map } from 'rxjs/operators';
// Services
import { ConfigurationDetailsService } from '../../../../services/ConfigurationDetails/configuration-details.service';
import { AdminDbcService } from '../../../../services/adminDBCCampaign/admin-dbc.service';
import { GetSessionService } from '../../../../services/globalsession.service';

import moment = require('moment');

@Component({
	selector: 'kt-arb-campaign',
	templateUrl: './arb-campaign.component.html',
	styleUrls: ['./arb-campaign.component.scss']
})
export class ArbCampaignComponent implements OnInit, AfterViewInit, OnDestroy {
	Title: string = "Configuration Details";
	isLoading: boolean = false;
	SAList = [];
	SelectedSA: any;
	postModal: any;
	private unsubscribe: Subscription[] = [];
	displayedColumnsForApi = ['SrNo', 'GroupName', 'DistributorName', 'TemplateName', 'TotalConsumer', 'NonWhatsAppNo', 'TotalSend', 'Balanced', 'ScheduleQty', 'Status', 'Actions'];
	@ViewChild('paginator') paginator: MatPaginator;
	@ViewChild('Sort') Sort: MatSort;
	public DataSource = new MatTableDataSource<SBCConfigDetailsListModel>();
	public _ConfigurationDetailsMasterModel: ConfigurationDetailsMasterModel = new ConfigurationDetailsMasterModel();
	public _SBCConfigDetailsModel: SBCConfigDetailsModel = new SBCConfigDetailsModel();
	filteredDistributorOptions: Observable<DistributorModel[]>;
	myControlDistributor = new FormControl();
	DDLDistributorList: DistributorModel[];
	myControlTemplate = new FormControl();
	DDLTemplateList: TemplateModel[];
	postSBCConfigDetailsAddUpdateModal: any;
	ScheduleDateResult: Date = new Date();
	model: any;
	isQueued: boolean = false;
	SelectedGroup: GroupModel = new GroupModel();
	filteredGroupOptions: Observable<GroupModel[]>;
	myControlGroup = new FormControl();
	DDLGroupList: GroupModel[];
	modalReference: NgbModalRef;
	GroupName: string = "";
	SelectedDistributor: DistributorModel[] = new Array<DistributorModel>();
	SelectedDistributors: DistributorModel[] = new Array<DistributorModel>();
	postSBCDistributorGroupMappingAddEditModal: any;
	filteredSelectDistributorOptions: Observable<DistributorModel[]>;
	myControlSelectDistributors = new FormControl();
	SelectTemplate: string = "";
	Distributors: DistributorModel[] = new Array<DistributorModel>();
	isEdit: boolean = false;
	subscription: Subscription;
	tooltipMsgResult: string = "";
	checked: boolean = false;
	ScheduleDaily: string = "";

	constructor(private _ConfigurationDetailsService: ConfigurationDetailsService, private adminDbcService: AdminDbcService,
		private toastr: ToastrService, private chRef: ChangeDetectorRef, private getSession: GetSessionService,
		private modalService: NgbModal) { }

	ngOnInit() {
		this._SBCConfigDetailsModel = {
			ScheduleDate: this.ConvertStringToDateObj(this.ScheduleDateResult)
		};
		this.postModal = {
			'Id': this.GetLoginDetails()
		};
		this.GetSAList(this.postModal);

		this.refreshData();
	}

	refreshData() {
		this.isLoading = true;
		this.subscription = timer(0, 120000)
			.pipe(switchMap(() => this._ConfigurationDetailsService.GetARBSBCConfigDetailsList("0")))
			.subscribe((data) => {
				console.log("timer used service every 2 minutes.");
				if (data.length > 0) {
					this.DataSource.data = data;
					this.DataSource.paginator = this.paginator;
					this.DataSource.sort = this.Sort;
					this.isLoading = false;
					let data1 = this.DataSource.data.filter(x => x.CurrentStatus === 'QUEUED')
					if (data1.length > 0) {
						this.isQueued = false;
					} else {
						this.isQueued = true;
					}
					this.chRef.detectChanges();
				} else {
					this.DataSource.data = [];
					this.isLoading = false;
					this.chRef.detectChanges();
				}
			});
	}

	GetLoginDetails() {
		let item = this.getSession.GetSessionData();
		return item.refNo;
	}

	// Get SA List
	GetSAList(postModel) {
		this.unsubscribe.push(this.adminDbcService.GetSAByRoCode(postModel.Id)
			.subscribe((data) => {
				this.SAList = data;
				if (!this.chRef['destroyed']) {
					this.chRef.detectChanges();
				}
			}, (error) => {
				console.error(error);
				this.chRef.detectChanges();
			}));
	}

	onChangeBindDistributorList() {
		this.model = {
			'DistributorId': 0,
			'SACode': this.SelectedSA
		}
		this.unsubscribe.push(this._ConfigurationDetailsService.GetSAListDetails(this.model)
			.subscribe((data) => {
				this.DDLDistributorList = data;
				this.filteredSelectDistributorOptions = this.myControlSelectDistributors.valueChanges
					.pipe(startWith<string | DistributorModel>(''),
						map(value => typeof value === 'string' ? value : value !== null ? value.DistributorName : null),
						map(DistributorName => DistributorName ? this.filterDistributor(DistributorName) : this.DDLDistributorList.slice()));
				this.chRef.detectChanges();
			}, () => { }));
		this.BindAllDDLGroupList();
	}

	private filterDistributor(name: string): DistributorModel[] {
		const filterDistributorValue = name.toLowerCase();
		return this.DDLDistributorList.filter((option) => option.DistributorName.toLowerCase().includes(filterDistributorValue) ||
			option.JDEDistributorCode.toLocaleLowerCase().includes(filterDistributorValue));
	}

	displayFnDistributor(value: DistributorModel[] | string): string | undefined {
		let displayValue: string;
		if (Array.isArray(value)) {
			value.forEach((user, index) => {
				if (index === 0) {
					displayValue = user.DistributorName;
				} else {
					displayValue += ', ' + user.DistributorName;
				}
			});
		} else {
			displayValue = value;
		}
		return displayValue;
	}

	// Get ARB Distributor Group Mapping List
	BindAllDDLGroupList() {
		this.unsubscribe.push(this._ConfigurationDetailsService.GetARBDistributorGroupMappingList(this.SelectedSA)
			.subscribe((data: any) => {
				if (data.length > 0) {
					this.myControlGroup.reset();
					this.DDLGroupList = [];
					this.DDLGroupList = data;
					this.filteredGroupOptions = this.myControlGroup.valueChanges
						.pipe(startWith<string | GroupModel>(''),
							map(value => typeof value === 'string' ? value : value !== null ? value.GroupName : null),
							map(GroupName => GroupName ? this.filterGroup(GroupName) : this.DDLGroupList.slice()));
					this.chRef.detectChanges();
				} else {
					this.NotSelectedGroup();
				}
			}, () => { }));
	}

	NotSelectedGroup() {
		this.isEdit = false;
		this.tooltipMsgResult = "";
		this.SelectedGroup = null;
		this.myControlGroup.reset();
		this.DDLGroupList = [];
		this.filteredGroupOptions = this.myControlGroup.valueChanges
			.pipe(startWith<string | GroupModel>(''),
				map(value => typeof value === 'string' ? value : value !== null ? value.GroupName : null),
				map(GroupName => GroupName ? this.filterGroup(GroupName) : this.DDLGroupList.slice()));
		this.myControlDistributor.reset();
		this.myControlTemplate.reset();
		this.chRef.detectChanges();
	}

	private filterGroup(name: string): GroupModel[] {
		const filterGroupValue = name.toLowerCase();
		return this.DDLGroupList.filter(option => option.GroupName.toLowerCase().includes(filterGroupValue));
	}

	displayFnGroup(user?: GroupModel): string | undefined {
		return user ? user.GroupName : undefined;
	}

	// On Change Group By Distributor List
	onChangeBindGroupByDistributorList() {
		if (this.SelectedSA != null && this.SelectedSA != undefined &&
			(this.SelectedGroup != null && this.SelectedGroup.GroupName != null && this.SelectedGroup.GroupName != "" && this.SelectedGroup.GroupName != undefined)) {
			this.unsubscribe.push(this._ConfigurationDetailsService.GetARBDistributorListByGroup(this.SelectedSA, this.SelectedGroup.GroupName)
				.subscribe((data: any) => {
					this.isEdit = true;
					this.SelectedDistributor = new Array<DistributorModel>();
					this.tooltipMsgResult = "";
					for (let res of data) {
						if (res.selected === 1) {
							this.SelectedDistributor.push(res);
							this.tooltipMsgResult += res.DistributorName + ", ";
							this.SelectedDistributor.findIndex(value => value.DistributorName === res.DistributorName);
							this.myControlDistributor.setValue(this.SelectedDistributor);
							this.myControlTemplate.setValue(res.TemplateName);
						}
					}
					this.tooltipMsgResult = this.tooltipMsgResult.replace(/,(?=[^,]*$)/, '');
					this.DDLDistributorList = this.SelectedDistributor;
					this.filteredDistributorOptions = this.myControlDistributor.valueChanges
						.pipe(startWith<string | DistributorModel>(''),
							map(value => typeof value === 'string' ? value : value !== null ? value.DistributorName : null),
							map(DistributorName => DistributorName ? this.filterDistributor(DistributorName) : this.DDLDistributorList.slice()));
					this.chRef.detectChanges();
				}, () => { }));
		} else {
			this.onChangeUnSelectedGroup();
		}
	}

	onChangeUnSelectedGroup() {
		this.isEdit = false;
		this.tooltipMsgResult = "";
		this.SelectedDistributor = new Array<DistributorModel>();
		this.myControlDistributor.reset();
		this.DDLDistributorList = [];
		this.DDLDistributorList = this.SelectedDistributor;
		this.filteredDistributorOptions = this.myControlDistributor.valueChanges
			.pipe(startWith<string | DistributorModel>(''),
				map(value => typeof value === 'string' ? value : value !== null ? value.DistributorName : null),
				map(DistributorName => DistributorName ? this.filterDistributor(DistributorName) : this.DDLDistributorList.slice()));
		this.myControlTemplate.reset();
		this.chRef.detectChanges();
	}

	// Get ARB ConfigDetails List
	GetARBSBCConfigDetailsList() {
		this.isLoading = true;
		this.unsubscribe.push(this._ConfigurationDetailsService.GetARBSBCConfigDetailsList("0")
			.subscribe((data: any) => {
				if (data.length > 0) {
					this.DataSource.data = data;
					this.DataSource.paginator = this.paginator;
					this.DataSource.sort = this.Sort;
					let data1 = this.DataSource.data.filter(x => x.CurrentStatus === 'QUEUED')
					if (data1.length > 0) {
						this.isQueued = false;
					} else {
						this.isQueued = true;
					}
				} else {
					this.DataSource.data = [];
				}
				this.isLoading = false;
				this.chRef.detectChanges();
			}, () => {
				this.isLoading = false;
				this.chRef.detectChanges();
			}));
	}

	optionClicked(event: MatCheckboxChange, user: DistributorModel) {
		let res = 0;
		if (event.checked === false) {
			res = 0;
			this.toggleSelection(user, res);
		}
		else {
			res = 1;
			this.toggleSelection(user, res);
		}
	}

	toggleSelection(user: DistributorModel, res) {
		if (res == 1) {
			this.Distributors.push(user);
			this.myControlSelectDistributors.setValue(this.Distributors);
		} else {
			const i = this.Distributors.findIndex(value => value.DistributorName === user.DistributorName);
			this.Distributors.splice(i, 1);
			this.myControlSelectDistributors.setValue(this.Distributors);
		}
	}

	// Get Template List
	BindAllDDLTemplateList() {
		this.unsubscribe.push(this._ConfigurationDetailsService.GetARBTemplateDetails()
			.subscribe((data: any) => {
				this.DDLTemplateList = data;
				this.chRef.detectChanges();
			}, () => { }));
	}

	numberOnly(event): boolean {
		const charCode = (event.which) ? event.which : event.keyCode;
		if (charCode > 31 && (charCode < 48 || charCode > 57)) {
			return false;
		}
		return true;
	}

	// Save Configuration Details
	SaveConfigurationDetails() {
		var arrDistributor = [];
		var tempDistributor: any;
		tempDistributor = "";

		this.ScheduleDaily = (this.checked === true ? "Y" : "N");

		if (this.SelectedSA === null || this.SelectedSA === undefined) {
			this.toastr.error('Please Select Sales Area(SA)');
		} else if ((this.SelectedGroup === null || (this.SelectedGroup.GroupName === null || this.SelectedGroup.GroupName === "" || this.SelectedGroup.GroupName === undefined)) &&
			(this.myControlDistributor.value === "" || this.myControlDistributor.value === null || this.myControlDistributor.value === undefined) &&
			(this.myControlTemplate.value === "" || this.myControlTemplate.value === null || this.myControlTemplate.value === undefined)) {
			this.toastr.error('Please Select Group');
		} else if (this._ConfigurationDetailsMasterModel.SendMessageValue <= 0) {
			this.toastr.error('Message Qty cannot be zero or less than zero');
		} else {
			arrDistributor.push(this.SelectedDistributor);

			arrDistributor.forEach((element: any) => {
				for (var i = 0; i < element.length; i++) {
					tempDistributor += element[i].DistributorId + ",";
				}
			});

			this.postSBCConfigDetailsAddUpdateModal = {
				'SACode': this.SelectedSA,
				'ScheduleDate': this.ConvertDateFormat(this._SBCConfigDetailsModel.ScheduleDate),
				'GroupName': this.SelectedGroup.GroupName,
				'DistributorIdarray': tempDistributor,
				'DistributorMobNo': "",
				'EmergencyNo': "",
				'IsWithRefillCost': "",
				'RSP': "",
				'TemplateId': this.myControlTemplate.value,
				'MsgQty': this._ConfigurationDetailsMasterModel.SendMessageValue,
				'CurrentStatus': "QUEUED",
				'Action': "ADD",
				'Retvalue': "",
				'ScheduleDaily': this.ScheduleDaily
			};
			this.unsubscribe.push(this._ConfigurationDetailsService.ARBConfigDetailsAddUpdate(this.postSBCConfigDetailsAddUpdateModal)
				.subscribe((data: any) => {
					if (data === 1) {
						this.toastr.success('Record Added Successfully!!!', 'Configuration Details');
						this.GetARBSBCConfigDetailsList();
						this.ClearConfigurationDetails();
						this.chRef.detectChanges();
					} else if (data === -1) {
						this.toastr.error('Distributors Already Exists', 'Configuration Details');
						this.GetARBSBCConfigDetailsList();
						this.ClearConfigurationDetails();
						this.chRef.detectChanges();
					}
				}, () => {
					this.toastr.error('Error', 'Configuration Details');
					this.chRef.detectChanges();
				}));
		}
	}

	// Send Message Configuration Details
	SendMessageConfigurationDetails(row: SBCConfigDetailsListModel) {
		this.unsubscribe.push(this._ConfigurationDetailsService.ARBSendMessageConfigurationDetails(row)
			.subscribe(() => {
				this.GetARBSBCConfigDetailsList();
			}, () => { }));
	}

	// ARB Send Message All Configuration Details
	SendMessageAllConfigurationDetails() {
		this.isLoading = true;
		this.unsubscribe.push(this._ConfigurationDetailsService.ARBSendMessageAllConfigurationDetails()
			.subscribe(() => {
				setTimeout(async () => {
					await this.GetARBSBCConfigDetailsList();
					this.isLoading = false;
				}, 60000); // 1 min.
			}, () => { }));
	}

	// Open Modal
	openModal(content) {
		if (this.SelectedSA != null || this.SelectedSA != undefined) {
			this.modalReference = this.modalService.open(content, {
				centered: true,
				size: 'lg',
				backdrop: 'static'
			});

			// Get Distributor List By Group
			if (this.SelectedGroup != null && (this.SelectedGroup.GroupName != null && this.SelectedGroup.GroupName != "" && this.SelectedGroup.GroupName != undefined)) {
				this.unsubscribe.push(this._ConfigurationDetailsService.GetARBDistributorListByGroup(this.SelectedSA, this.SelectedGroup.GroupName)
					.subscribe((data: any) => {
						this.isEdit = true;
						this.SelectedDistributors = new Array<DistributorModel>();
						this.Distributors = [];
						this.myControlSelectDistributors.reset();
						this.DDLTemplateList = [];
						for (let res of data) {
							if (res.selected === 1) {
								this.GroupName = res.GroupName;
								this.SelectedDistributors.push(res);
								this.Distributors.push(res);
								this.SelectedDistributors.findIndex(value => value.DistributorName === res.DistributorName);
								this.myControlSelectDistributors.setValue(this.Distributors);
								this.DDLTemplateList.push(res);
								this.SelectTemplate = res.TemplateId;
							} else {
								this.SelectedDistributors.push(res);
								this.DDLTemplateList.push(res);
							}
						}
						this.DDLDistributorList = this.SelectedDistributors;
						this.filteredSelectDistributorOptions = this.myControlSelectDistributors.valueChanges
							.pipe(startWith<string | DistributorModel>(''),
								map(value => typeof value === 'string' ? value : value !== null ? value.DistributorName : null),
								map(DistributorName => DistributorName ? this.filterDistributor(DistributorName) : this.DDLDistributorList.slice()));
						this.BindAllDDLTemplateList();
					}));
			} else {
				this.onClear();
				this.isEdit = false;
				this.chRef.detectChanges();
			}
		} else {
			this.toastr.error('Please Select Sales Area(SA)');
			this.chRef.detectChanges();
		}
	}

	onChangeSelectDistributors() {
		if (this.myControlSelectDistributors.value === "") {
			this.myControlSelectDistributors.reset();
			this.SelectedDistributors = [];
			this.Distributors = [];
			this.onChangeBindDistributorList(); // Get SA wise Distributors List
		}
	}

	// SBC Distributor Group Mapping -> Add/Update
	onSaveSBCDistributorGroupMappingAddEdit() {
		var arrDistributor = [];
		var tempDistributor: any;
		tempDistributor = "";

		if (this.GroupName === null || this.GroupName === "" || this.GroupName === undefined) {
			this.toastr.error('Please Enter Group Name');
		} else if (this.Distributors.length === 0 || this.Distributors === null || this.Distributors === undefined) {
			this.toastr.error('Please Select Distributors');
		} else if (this.SelectTemplate === null || this.SelectTemplate === "" || this.SelectTemplate === undefined) {
			this.toastr.error('Please Select Template');
		} else {
			arrDistributor.push(this.Distributors);

			arrDistributor.forEach((element: any) => {
				for (var i = 0; i < element.length; i++) {
					tempDistributor += element[i].DistributorId + ",";
				}
			});

			// Add
			if (this.isEdit === false) {
				this.postSBCDistributorGroupMappingAddEditModal = {
					'GroupId': 0,
					'GroupName': this.GroupName,
					'SACode': this.SelectedSA,
					'DistributorIdArray': tempDistributor,
					'TemplateId': this.SelectTemplate,
					'IsActive': "Y",
					'Action': "ADD",
					'Retvalue': ""
				};
				this.unsubscribe.push(this._ConfigurationDetailsService.ARBDistributorGroupMappingAddEdit(this.postSBCDistributorGroupMappingAddEditModal)
					.subscribe((data: any) => {
						if (data > 0) {
							this.toastr.success('Added Successfully!!!', 'Group Name');
							this.modalReference.close();
							this.onChangeBindGroupByDistributorList();
							this.BindAllDDLGroupList();
							this.chRef.detectChanges();
						} else {
							this.toastr.error('Distributor Group Mapping Already Exists', 'Group Name');
							this.modalReference.close();
							this.onClear();
							this.chRef.detectChanges();
						}
					}, () => { }));
			} else {
				// Edit/Update
				this.postSBCDistributorGroupMappingAddEditModal = {
					'GroupId': 0,
					'GroupName': this.GroupName,
					'SACode': this.SelectedSA,
					'DistributorIdArray': tempDistributor,
					'TemplateId': this.SelectTemplate,
					'IsActive': "Y",
					'Action': "Edit",
					'Retvalue': ""
				};
				this.unsubscribe.push(this._ConfigurationDetailsService.ARBDistributorGroupMappingAddEdit(this.postSBCDistributorGroupMappingAddEditModal)
					.subscribe((data: any) => {
						if (data > 0) {
							this.toastr.success('Update Successfully!!!', 'Group Name');
							this.modalReference.close();
							this.onChangeBindGroupByDistributorList();
							this.BindAllDDLGroupList();
							this.chRef.detectChanges();
						} else {
							this.toastr.error('Distributor Group Mapping Already Exists', 'Group Name');
							this.modalReference.close();
							this.onClear();
							this.chRef.detectChanges();
						}
					}, () => { }));
			}
		}
	}

	onClear() {
		this.GroupName = "";
		this.DDLDistributorList = [];
		this.SelectedDistributors = [];
		this.Distributors = [];
		this.myControlSelectDistributors.reset();
		this.SelectTemplate = "";
		this.BindAllDDLTemplateList();  // Get Template List
		this.onChangeBindDistributorList(); // Get SA wise Distributors List
	}

	onCancel() {
		this.modalReference.close();
		this.Distributors = [];
		this.myControlSelectDistributors.reset();
	}

	// Clear ConfigurationDetails
	ClearConfigurationDetails() {
		this.SelectedSA = null;
		this.SelectedGroup = null;
		this.myControlGroup.reset();
		this.DDLGroupList = [];
		this.onChangeBindDistributorList();
		this.SelectedDistributor = null;
		this.myControlDistributor.reset();
		this.DDLDistributorList = [];
		this.DDLTemplateList = [];
		this.myControlTemplate.reset();
		this._ConfigurationDetailsMasterModel.SendMessageValue = 0;
		this.tooltipMsgResult = "";
		this.checked = false;
		this.chRef.detectChanges();
	}

	// Use to convert string to date obj
	ConvertStringToDateObj(SelDate) {
		let d = new Date(moment(SelDate, 'DD-MM-YYYY hh:mm tt').format('YYYY-MM-DD'));
		return { year: d.getFullYear(), month: d.getMonth() + 1, day: d.getDate() };
	}

	// Use to Convert object to  Date Format string
	ConvertDateFormat(condate) {
		let dateInput = new Date(condate.year, condate.month - 1, condate.day);
		return moment(dateInput).format('YYYY-MM-DD');
	}

	// Set side menu close
	ngAfterViewInit() {
		this._ConfigurationDetailsService.Toggler = new KTToggle('kt_aside_toggler', this._ConfigurationDetailsService.toggleOptions);
		this._ConfigurationDetailsService.DivToggleWidth = '100%';
		this._ConfigurationDetailsService.IsModelOn = false;
		this._ConfigurationDetailsService.displayValue = false;
		this._ConfigurationDetailsService.Toggler.toggleOn();
		$('#kt_aside_close_btn').click();
		setTimeout(() => {
			this._ConfigurationDetailsService.OpenToggle = true;
			this._ConfigurationDetailsService.Toggler.toggleOn();
			$('#kt_aside_close_btn').click();
		}, 500);
	}

	ngOnDestroy() {
		this.subscription.unsubscribe();
		this.unsubscribe.forEach(sb => sb.unsubscribe());
	}
}
