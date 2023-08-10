import { ChangeDetectorRef, Component, OnInit, ViewChild } from '@angular/core'
import moment = require('moment');
import { Subscription } from 'rxjs';
import { ToastrService } from 'ngx-toastr';
import { MatPaginator, MatSort, MatTableDataSource } from '@angular/material';
import { ModalDismissReasons, NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { GetSessionService } from '../../../../services/globalsession.service';
import { DbcCampaignService } from '../../../../services/DBCCampaign/dbc-campaign.service';
import { HeaderServiceService } from '../../../../services/HeaderService/header-service.service';
import { MessageSentConsumerCount } from '../../../../models/Dashboard/dist-dashboard.model';


@Component({
	selector: 'kt-arb-distributor-campaign',
	templateUrl: './arb-distributor-campaign.component.html',
	styleUrls: ['./arb-distributor-campaign.component.scss']
})
export class ArbDistributorCampaignComponent implements OnInit {
	private unsubscribe: Subscription[] = [];
	postModal: any;
	FromDate: any = null;
	ToDate: any = null;
	isLoading: boolean = false;
	DataSource = new MatTableDataSource<any>();
	_messageSentConsumerCount: MessageSentConsumerCount;
	DataSourceInterestedCount = new MatTableDataSource<any>();
	@ViewChild('paginator') paginator: MatPaginator;
	@ViewChild('sort1') sort1: MatSort;
	coloumns = ['SrNo', 'Status', 'Read', 'Interested'];
	displayedColumns = ['ConsumerNo', 'ConsumerName', 'MobileNo', 'MessageStatus', 'IsReplayReceivedDate', 'StatusName', 'Feedback', 'ConnectionUpdate', 'UserRemark'];
	@ViewChild('paginator2') paginator2: MatPaginator;
	@ViewChild('sort2') sort2: MatSort;
	ConsumerListBackup: any;
	ConsumerList: any;
	CallStatusList: any[] = [];
	CallStatus: string;
	ConsumerFeedback: string;
	DistributorIdint: number;
	ConsumerNo: number;
	UniqueConsumerid: string;
	PurchaseDateTemp: any;
	search: string = '';
	flag: any;
	temprecord: any;
	isdbccampaign: boolean;
	loadingTitle = '';
	closeResult: string;

	constructor(private chRef: ChangeDetectorRef, private getSession: GetSessionService, private _dbcCampaignService: DbcCampaignService,
		private toastr: ToastrService, private modalService: NgbModal, private service: HeaderServiceService) { }

	ngOnInit() {
		this.service.changeState(true);
		this.isdbccampaign = true;
		this.postModal = {
			'DistributorId': this.GetLoginDetails()
		};
		this._messageSentConsumerCount = new MessageSentConsumerCount();
		this.GetConsumerList();
		this.GetConsumerCount(this.postModal);
		this.GetStatuswiseCounts(this.postModal);
	}

	GetLoginDetails() {
		let item = this.getSession.GetSessionData();
		return item.refNo;
	}

	GetConsumerList() {
		const modal = {
			'DistributorId': this.postModal.DistributorId,
			'Fromdate': this.FromDate === null ? null : this.ConvertDateFormat(this.FromDate),
			'Todate': this.ToDate === null ? null : this.ConvertDateFormat(this.ToDate)
		}
		this.isLoading = true;
		this.unsubscribe.push(this._dbcCampaignService.GetARBAllConsumers_service(modal)
			.subscribe(data => {
				if (data != null && data != undefined) {
					this.DataSource = new MatTableDataSource();
					this.DataSource.data = data.filter(x => x.IsReplayReceived === 'Y' || x.UserReply !== null);
					this.ConsumerListBackup = data;
					this.DataSource.paginator = this.paginator;
					this.DataSource.sort = this.sort1;
				} else {
					this.DataSource = new MatTableDataSource();
					this.DataSource.data = null;
				}
				this.isLoading = false;
				this.chRef.detectChanges();
			}));
	}

	GetStatuswiseCounts(postModel) {
		this.unsubscribe.push(this._dbcCampaignService.GetARBStatusWiseCountDetails_service(postModel)
			.subscribe(data => {
				if (data != null && data != undefined) {
					this.DataSourceInterestedCount = new MatTableDataSource();
					this.DataSourceInterestedCount.data = data;
					this.DataSourceInterestedCount.paginator = this.paginator2;
					this.DataSourceInterestedCount.sort = this.sort2;
				} else {
					this.DataSourceInterestedCount = new MatTableDataSource();
					this.DataSourceInterestedCount.data = null;
				}
				this.chRef.detectChanges();
			}));
	}

	ShowConsList(Flag?: any) {
		if (this.ConsumerListBackup != null && this.ConsumerListBackup !== undefined) {
			if (Flag === 'All') {
				this.ConsumerList = this.ConsumerListBackup;
			}
			else if (Flag === 'ConnectionReleased') {
				this.ConsumerList = this.ConsumerListBackup.filter(x => x.ConnectionReleased === 'Y');

			} else if (Flag === 'Interested') {
				this.ConsumerList = this.ConsumerListBackup.filter(x => x.IsReplayReceived === 'Y' || x.UserReply !== null);

			} else if (Flag === 'Read') {
				this.ConsumerList = this.ConsumerListBackup.filter(x => x.MessageStatus === 'READ' || x.MessageStatus === 'REPLIED');

			} else if (Flag === 'Contacted') {
				this.ConsumerList = this.ConsumerListBackup.filter(x => x.StatusName !== null);
			}
			else if (Flag === 'NotInterested') {
				this.ConsumerList = this.ConsumerListBackup.filter(x => x.NotIntrested === 'Y');
			}
			else if (Flag === 'ReadContacted') {
				this.ConsumerList = this.ConsumerListBackup.filter(x => x.StatusName !== null && (x.MessageStatus === 'READ' || x.MessageStatus === 'REPLIED'));
			}
			else if (Flag === 'Sent') {
				this.ConsumerList = this.ConsumerListBackup.filter(x => x.IsMessageSent === 'Y');
			}
			else if (Flag === 'MIDone') {
				this.ConsumerList = this.ConsumerListBackup.filter(x => x.MIDone === 'Y');
			}
			else if (Flag === 'HoseChanged') {
				this.ConsumerList = this.ConsumerListBackup.filter(x => x.HoseChanged === 'Y');
			}
			else if (Flag === 'MI_Suraksha') {
				this.ConsumerList = this.ConsumerListBackup.filter(x => x.MI_Suraksha === 'Y');
			}
			else if (Flag === 'ARBDone') {
				this.ConsumerList = this.ConsumerListBackup.filter(x => x.ARBDone === 'Y')
			}
			this.DataSource = new MatTableDataSource(this.ConsumerList);
			this.DataSource.paginator = this.paginator;
			this.DataSource.sort = this.sort1;
			if (!this.chRef['destroyed']) {
				this.chRef.detectChanges();
			}
		}
	}

	GetConsumerCount(postModel) {
		this.unsubscribe.push(this._dbcCampaignService.ARBConsumersCount_service(postModel)
			.subscribe(data => {
				if (data != null && data != undefined) {
					this._messageSentConsumerCount = data;
					this.chRef.detectChanges();
				}
			}));
	}

	applyFilter(filterValue: string) {
		filterValue = filterValue.trim(); // Remove whitespace
		filterValue = filterValue.toLowerCase(); // Datasource defaults to lowercase matches
		this.DataSource.filter = filterValue;
	}

	open(content, ref: any) {
		this.temprecord = ref;
		this.getMsgStatus();
		this.DistributorIdint = ref.DistributorIdint;
		this.ConsumerNo = ref.ConsumerNo;
		this.UniqueConsumerid = ref.UniqueConsumerid;
		this.PurchaseDateTemp = null;
		this.CallStatus = " ";
		this.ConsumerFeedback = " ";
		this.loadingTitle = 'Release Connection';
		this.modalService.open(content, { centered: true, size: 'lg' }).result.then((result) => {
			this.closeResult = `Closed with: ${result}`;
		}, (reason) => {
			this.closeResult = `Dismissed ${this.getDismissReason(reason)}`;
		});
	}

	private getDismissReason(reason: any): string {
		if (reason === ModalDismissReasons.ESC) {
			return 'by pressing ESC';
		} else if (reason === ModalDismissReasons.BACKDROP_CLICK) {
			return 'by clicking on a backdrop';
		} else {
			return `with: ${reason}`;
		}
	}


	ConvertDateFormat(condate) {
		let dateInput = new Date(condate.year, condate.month - 1, condate.day);
		return moment(dateInput).format('YYYY-MM-DD');
	}

	UpdateStatus() {
		let model = null;
		if ((this.CallStatus === null || this.CallStatus === undefined || this.CallStatus === " ") ||
			(this.ConsumerFeedback === null || this.ConsumerFeedback === undefined || this.ConsumerFeedback === " " || this.ConsumerFeedback === "")) {
			this.toastr.error('Please Enter Consumer Feedback ');
			this.chRef.detectChanges();
		} else {
			model = {
				DistributorIdint: this.DistributorIdint,
				ConsumerNo: this.ConsumerNo,
				UniqueConsumerid: this.UniqueConsumerid,
				StatusName: this.CallStatus,
				ConsumerFeedback: this.ConsumerFeedback,
				ConnectionReleased: 'Y',
			};
			this.unsubscribe.push(this._dbcCampaignService.ARBUpdateARBStatus_service(model)
				.subscribe(data => {
					if (data != null && data != undefined) {
						this.flag = data;
						if (this.flag > 0) {
							this.toastr.success('Status Submited Successfully!');
							this.modalService.dismissAll();
							this.PurchaseDateTemp = null;

							for (let i = 0; i <= this.ConsumerListBackup.length - 1; i++) {
								if (this.ConsumerListBackup[i].UniqueConsumerid == this.temprecord.UniqueConsumerid) {
									this.ConsumerListBackup[i].StatusName = this.CallStatus;
									this.ConsumerListBackup[i].ConsumerFeedback = this.ConsumerFeedback;
								}
							}

							this.DataSource = new MatTableDataSource(this.ConsumerListBackup);
							this.DataSource.paginator = this.paginator;
							this.DataSource.sort = this.sort1;
							this.GetConsumerCount(this.postModal);
							this.GetStatuswiseCounts(this.postModal);
						} else {
							this.toastr.error('Something went wrong!');
							this.chRef.detectChanges();
						}
					}
				}));
		}
	}

	getMsgStatus() {
		this.unsubscribe.push(this._dbcCampaignService.GetCallStatusList("ARB")
			.subscribe(data => {
				this.CallStatusList = data.CallStatusParameter;
				this.chRef.detectChanges();
			}));
	}

	ngOnDestroy() {
		this.unsubscribe.forEach(sb => sb.unsubscribe());
	}

}
