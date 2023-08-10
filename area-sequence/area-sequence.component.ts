import { ViewChild, ChangeDetectorRef } from '@angular/core';
import { Component, OnInit } from '@angular/core';
import { MatSort, MatPaginator, MatTableDataSource } from '@angular/material';
import { ConfigurationDetailsService } from '../../../../services/ConfigurationDetails/configuration-details.service';
import { ToastrService } from 'ngx-toastr';

@Component({
	selector: 'kt-area-sequence',
	templateUrl: './area-sequence.component.html',
	styleUrls: ['./area-sequence.component.scss']
})
export class AreaSequenceComponent implements OnInit {

	columns = ['SrNo', 'AreaRefNo', 'AreaName', 'ConsCnt', 'AreaSequenceUpdate'];
	@ViewChild(MatPaginator) paginator: MatPaginator;
	@ViewChild(MatSort) sort: MatSort;
	public DataSource = new MatTableDataSource<any>();
	DistributorCode: string = "";
	isLoading: boolean = false;
	SeqNoUpdateModal: any;
	public SequenceNo: any = [];
	AreaList: any[] = [];

	constructor(private chRef: ChangeDetectorRef, private service: ConfigurationDetailsService,
		private toastr: ToastrService) { }

	ngOnInit() {
		let user = JSON.parse(sessionStorage.getItem('LoginData'));
		this.DistributorCode = user.UserName;
		this.GetSurakshaUsersByAreaSeqList(this.DistributorCode);
	}

	GetSurakshaUsersByAreaSeqList(DistCode: string) {
		this.isLoading = true;
		this.service.GetSurakshaUsersByAreaSeqList(DistCode).subscribe((data) => {
			if (data.length > 0) {
				this.AreaList = data;
				this.DataSource.data = data;
				this.DataSource.paginator = this.paginator;
				this.DataSource.sort = this.sort;
			} else {
				this.DataSource.data = [];
			}
			this.isLoading = false;
			this.chRef.detectChanges();
		})
	}

	SequenceNoExist(row: any) {
		for (let i = 0; i <= this.AreaList.length - 1; i++) {
			if (this.AreaList[i].AreaSeqNo == row.AreaSeqNo && this.AreaList[i].AreaRefNo !== row.AreaRefNo) {
				this.toastr.warning('Sequence No Already Exist!');
			} else if (this.AreaList[i].AreaSeqNo == 0) {
				this.toastr.warning('Sequence No Must Be Greater Than 0!');
			}
		}
		this.chRef.detectChanges();
	}

	UpdateAreaSequenceNo() {
		this.isLoading = true;
		var tempAreaRefNoStr: any, tempSeqNoStr: any;
		tempAreaRefNoStr = ""; tempSeqNoStr = "";
		for (let i = 0; i <= this.AreaList.length - 1; i++) {
			for (let j = 0; j <= this.AreaList.length - 1; j++) {
				if (this.AreaList[i].AreaSeqNo == 0) {
					this.toastr.warning('Please Enter All Sequence No!', 'Area Sequence');
					this.isLoading = false;
					return;
				} else if (
					this.AreaList[i].AreaSeqNo == this.AreaList[j].AreaSeqNo && this.AreaList[i].AreaRefNo !== this.AreaList[j].AreaRefNo) {
					this.toastr.warning('Sequence No Already Exist!', 'Area Sequence');
					this.isLoading = false;
					return;
				}
			}
		}
		for (let i = 0; i <= this.AreaList.length - 1; i++) {
			tempAreaRefNoStr += this.AreaList[i].AreaRefNo + ",";
			tempSeqNoStr += this.AreaList[i].AreaSeqNo + ",";
		}
		this.SeqNoUpdateModal = {
			'JDEDistributorCode': this.DistributorCode,
			'AreaRefNoStr': tempAreaRefNoStr,
			'SeqNoStr': tempSeqNoStr,
		};
		this.service.UpdateAreaSequenceNo(this.SeqNoUpdateModal)
			.subscribe((data: any) => {
				if (data > 0) {
					this.toastr.success('Sequence No Update Successfully!', 'Area Sequence', { timeOut: 2000 });
				} else {
					this.toastr.error('Something went wrong!', 'Area Sequence', { timeOut: 2000 });
				}
				this.GetSurakshaUsersByAreaSeqList(this.DistributorCode);
				this.SequenceNo = [];
			}, (error) => {
				console.error(error)
				this.isLoading = false;
				this.chRef.detectChanges();
			});
	}

	numberOnly(event: any) {
		const pattern = /[0-9]/;
		let inputChar = String.fromCharCode(event.charCode);
		if (event.keyCode != 8 && !pattern.test(inputChar)) {
			event.preventDefault();
		}
	}

	ClearData() {
		this.SequenceNo = [];
		this.GetSurakshaUsersByAreaSeqList(this.DistributorCode);
		this.chRef.detectChanges();
	}
}
