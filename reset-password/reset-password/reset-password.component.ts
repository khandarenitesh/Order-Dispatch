import { Component, OnInit, ViewChild, ChangeDetectorRef } from '@angular/core';
import { MatSort, MatPaginator, MatTableDataSource } from '@angular/material';
import { ConfigurationDetailsService } from '../../../../services/ConfigurationDetails/configuration-details.service';
import { ToastrService } from 'ngx-toastr';
import { NgbModal, NgbModalRef } from '@ng-bootstrap/ng-bootstrap';

@Component({
	selector: 'kt-reset-password',
	templateUrl: './reset-password.component.html',
	styleUrls: ['./reset-password.component.scss'],
})
export class ResetPasswordComponent implements OnInit {
	displayColumns = ['SrNo', 'Distributor_Code', 'Distributor_Name', 'CDCMS_ID_Email', 'CDCMS_Password', 'Updated_Date', 'UpdatePass'];
	@ViewChild(MatPaginator) paginator: MatPaginator;
	@ViewChild(MatSort) sort: MatSort;
	public DataSource = new MatTableDataSource<any>();
	DistributorCode: string = '';
	isLoading: boolean = false;
	loadingTitle = '';
	SelectedDistributorCode: string = '';
	SelectedDistributorName: string = '';
	SelectedEmail: string = '';
	Selectedpassword: string = '';
	modalReference: NgbModalRef;
	searchModel: any;

	constructor(
		private chRef: ChangeDetectorRef,
		private service: ConfigurationDetailsService,
		private toaster: ToastrService,
		private modalService: NgbModal,
	) { }

	ngOnInit() {
		let user = JSON.parse(sessionStorage.getItem('LoginData'));
		this.DistributorCode = user.UserName;
		this.GetDistributorListforResetPass();
	}
	GetDistributorListforResetPass() {
		this.isLoading = true;
		this.service.GetDistributorListforResetPass().subscribe((data) => {
			if (data.length > 0) {
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

	//Popup open
	openUpdateContact(content, row: any) {
		if (row.Distributor_Code !== '' && row.Distributor_Code !== null && row.Distributor_Code !== undefined) {
			this.loadingTitle = 'Update Password';
			this.SelectedDistributorCode = row.Distributor_Code;
			this.SelectedDistributorName = row.Distributor_Name;
			this.SelectedEmail = row.CDCMS_ID_Email;
			this.Selectedpassword = row.CDCMS_Password;
			this.modalReference = this.modalService.open(content, {
				centered: true,
				size: 'lg',
				backdrop: 'static',
			});
		} else {
			this.toaster.warning('Something went wrong!', 'Distributor Code Not Be Empty!');
		}
		this.chRef.detectChanges();
	}

	// Email Validation
	isEmail(Email: string): boolean {
		var result: boolean;
		let regexp;
		regexp = new RegExp(
			/^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/,
		)
		result = regexp.test(Email);
		return result;
	}
	UpdatePassword() {
		if (this.SelectedDistributorCode !== '' && this.SelectedDistributorCode !== null && this.SelectedDistributorCode !== undefined &&
			this.SelectedEmail !== '' && this.SelectedEmail !== undefined && this.SelectedEmail !== null && this.Selectedpassword !== undefined &&
			this.Selectedpassword !== null && this.Selectedpassword !== '') {
			if (!this.isEmail(this.SelectedEmail)) {
				this.toaster.warning('Invalid Email!');
				return;
			} else {
				let model = {
					Distributor_Code: this.SelectedDistributorCode,
					CDCMS_ID_Email: this.SelectedEmail,
					CDCMS_Password: this.Selectedpassword,
				}
				this.service.UpdatePassword(model).subscribe(
					(data: any) => {
						if (data > 0) {
							this.toaster.success('Password Updated successfully!', 'Reset Password');
							this.GetDistributorListforResetPass();
							this.modalService.dismissAll();
						} else {
							this.toaster.error('something went wrong!', 'Reset Password');
						}
					},
					(error: any) => {
						console.error('Reset Password :  ' + JSON.stringify(error));
						this.isLoading = false;
						this.chRef.detectChanges();
					},);
			}
		} else {
			this.toaster.error('field can not be empty');
		}
	}

	applyFilter() {
		this.isLoading = true;
		this.searchModel = this.searchModel.toLowerCase(); // Datasource defaults to lowercase matches
		this.DataSource.filter = this.searchModel;
		this.isLoading = false;
		this.chRef.detectChanges(); // IMMEDIATE ACTION FIRED
	}
}
