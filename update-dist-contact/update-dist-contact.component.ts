import { Component, OnInit, ViewChild, ElementRef, ChangeDetectorRef, OnDestroy, AfterViewInit } from '@angular/core';
import { FormControl } from '@angular/forms';
import { DistributorModel } from '../../../models/DBCCampaignUpload/dbc-campaign-upload.model';
import { UpdateDistContactService } from '../../../services/UpdateDistContact/update-dist-contact.service';
import { ToastrService } from 'ngx-toastr';
import { Subscription, Observable } from 'rxjs';
import { startWith, map } from 'rxjs/operators';
import { NgbModal, NgbModalRef } from '@ng-bootstrap/ng-bootstrap';

@Component({
	selector: 'kt-update-dist-contact',
	templateUrl: './update-dist-contact.component.html',
	styleUrls: ['./update-dist-contact.component.scss']
})
export class UpdateDistContactComponent implements OnInit, OnDestroy, AfterViewInit {

	@ViewChild('fileInput') fileInput: ElementRef;
	isLoading: boolean = false;
	private unsubscribe: Subscription[] = [];
	SelectedDistributor: DistributorModel = new DistributorModel();
	filteredDistributorOptions: Observable<DistributorModel[]>;
	filteredSelectDistributorOptions: Observable<DistributorModel[]>;
	myControlSelectDistributors = new FormControl();
	myControlDistributor = new FormControl();
	DDLDistributorList: DistributorModel[];
	postDistributorModal: any;
	loadingTitle = '';
	closeResult: string = "";
	MobileNo: string = "";
	EmergencyContactNo: string = "";
	modalReference: NgbModalRef;
	SelectedMobileNo: string = "";
	SelectedEmergencyContactNo: string = "";
	Email: string = "";
	SelectedEmail: string = "";
	SelectedPhoneNo: string = ""
	PhoneNo: string = "";

	constructor(private updatedistcontactservice: UpdateDistContactService, private toastr: ToastrService,
		private chRef: ChangeDetectorRef, private modalService: NgbModal) { }

	ngOnInit() {
		this.onClear();
		this.GetDDLDistributorList();
	}

	// CLEAR FILE
	onClear() {
		this.SelectedDistributor = null;
		this.isLoading = false;
		this.chRef.detectChanges();
	}

	// GET DISTRIBUTOR LIST FOR SEARCH BOX
	GetDDLDistributorList() {
		this.isLoading = true;
		this.postDistributorModal = {
			'DistributorId': 0
		};
		this.unsubscribe.push(this.updatedistcontactservice.GetDistDetails(this.postDistributorModal)
			.subscribe((data) => {
				this.DDLDistributorList = data.DistributorList;
				this.DDLDistributorList = this.DDLDistributorList.sort((a: any, b: any) => a.DistributorName.localeCompare(b.DistributorName));
				this.filteredDistributorOptions = this.myControlDistributor.valueChanges
					.pipe(startWith<string | DistributorModel>(''),
						map(value => typeof value === 'string' ? value : value !== null ? value.DistributorName : null),
						map(DistributorName => DistributorName ? this.filterDistributor(DistributorName) : this.DDLDistributorList.slice()));
				this.isLoading = false;
				this.chRef.detectChanges();
			}, () => {
			}));
		// }
	}
	// ON CHANGE DISTRIBUTOR SELECT
	onChangeBindDistributorList(did) {
		if (did === "" || did === undefined || did === null) {
			this.MobileNo = "";
			this.EmergencyContactNo = ""; // MOBILE NO AND EMERGENCY NUMBER WILL EMPTY IF WE NOT SELECT ANY DISTRIBUTOR
			this.Email = "";
			this.PhoneNo = "";
		}

		if (this.SelectedDistributor != null) {
			this.postDistributorModal = {
				'DistributorId': this.SelectedDistributor.DistributorId, // GET DISTRIBUTORID
			}
			this.isLoading = true;
			this.unsubscribe.push(this.updatedistcontactservice.GetDistDetails(this.postDistributorModal)
				.subscribe((data: any) => {
					// GET DISTRIBUTORlIST ( AL LIST OF DISTRIBUTOR -ARRY OF JSON FORMAT)
					for (let res of data.DistributorList) {
						if (res.DistributorId === this.SelectedDistributor.DistributorId) {
							this.MobileNo = res.MobileNo;
							this.EmergencyContactNo = res.EmergencyContactNo;
							this.Email = res.Email;
							this.PhoneNo = res.PhoneNo;
						}
					}
					this.isLoading = false;
					this.chRef.detectChanges();
				}, () => { }));
		}
	}
	// FILTER BY DISTRIBUTOR NAME OR ID
	private filterDistributor(name: string): DistributorModel[] {
		const filterDistributorValue = name.toLowerCase();
		return this.DDLDistributorList.filter((option) => option.DistributorName.toLowerCase().includes(filterDistributorValue) ||
			option.JDEDistributorCode.toLocaleLowerCase().includes(filterDistributorValue));
	}

	displayFnDistributor(user?: DistributorModel): string | undefined {
		return user ? user.DistributorName + "( " + user.JDEDistributorCode + " ) " : undefined;
	}

	//OPEN AND CLOSE POPUP WINDOW
	openUpdateContact(content) {
		// Validation - if select distributor not choose
		if (this.SelectedDistributor === null || this.SelectedDistributor === undefined) {
			this.toastr.warning("Please Select Distributor");
		} else {
			this.loadingTitle = 'Update Contact Details';
			this.SelectedMobileNo = this.MobileNo;
			this.SelectedEmergencyContactNo = this.EmergencyContactNo;
			this.SelectedEmail = this.Email;
			this.SelectedPhoneNo = this.PhoneNo;
			this.modalReference = this.modalService.open(content, {
				centered: true,
				size: 'lg',
				backdrop: 'static'
			});
		}
	}

	// UPDATE CONTACT NUMBER
	UpdateDistributorContactDetails() {
		// UPDATE BOTH MOBILE NUMBER AND EMEGENCY NUMBER (REQUIRED CONDITION)
		if (this.SelectedMobileNo !== "" && this.SelectedMobileNo !== null && this.SelectedMobileNo !== undefined && this.SelectedEmergencyContactNo !== ""
			&& this.SelectedEmergencyContactNo !== undefined && this.SelectedEmail !== null &&
			this.SelectedEmail !== undefined) {
			if (!this.isEmail(this.SelectedEmail)) {
				this.toastr.warning('Invalid Email!', 'Update Distributor Contact');
			}
			else {
				let model = {
					DistributorId: this.SelectedDistributor.DistributorId,
					MobileNo: this.SelectedMobileNo,
					EmergencyContactNo: this.SelectedEmergencyContactNo,
					Email: this.SelectedEmail,
					PhoneNo: this.SelectedPhoneNo
				}
				this.isLoading = true;
				this.unsubscribe.push(this.updatedistcontactservice.UpdateDistbutorContactDetails
					(model).subscribe((data: any) => { // CREATED MODEL PASSED HERE
						if (data === "Success") {
							this.toastr.success('Record Updated Successfully.', 'Update Distributor Contact');
							this.modalReference.close();
							this.ClearModel();
							this.isLoading = false;
							this.chRef.detectChanges();
						} else {
							this.toastr.warning('Record Updated Failed.', 'Update Distributor Contact');
							this.modalReference.close();
							this.ClearModel();
							this.isLoading = false;
							this.chRef.detectChanges();
						}
					}));
			}
			// UPDATE ONLY MOBILE NUMBER (WE CAN PASS NULL TO EMERGENCY NUMBER)
		} else if ((this.SelectedMobileNo !== "" && this.SelectedMobileNo !== undefined && this.SelectedMobileNo !== ""
			&& this.SelectedEmergencyContactNo === "" && this.SelectedEmail !== null && this.SelectedEmail !== undefined)) {
			let model = {
				DistributorId: this.SelectedDistributor.DistributorId,
				MobileNo: this.SelectedMobileNo,
				EmergencyContactNo: "none",
				Email: this.SelectedEmail,
				PhoneNo: this.SelectedPhoneNo
			}
			this.isLoading = true;
			this.unsubscribe.push(this.updatedistcontactservice.UpdateDistbutorContactDetails
				(model).subscribe((data: any) => {
					if (data === "Success") {
						this.toastr.success('Record Updated Successfully.', 'Update Distributor Contact');
						this.modalReference.close();
						this.ClearModel();
						this.isLoading = false;
						this.chRef.detectChanges();
					} else {
						this.toastr.warning('Record Updated Failed.', 'Update Distributor Contact');
						this.modalReference.close();
						this.ClearModel();
						this.isLoading = false;
						this.chRef.detectChanges();
					}
				}));
		} else {
			this.toastr.error("field cannot be empty");
		}

	}

	// CLEAR FIELDS ON FORMS
	ClearModel() {
		this.myControlDistributor.reset(); // RESET() BECAUSE U R PASSED FORMCONTROL TO YOUR HTML
		this.MobileNo = "0";
		this.EmergencyContactNo = "0";
		this.Email = "-";
		this.PhoneNo = "0";
		this.chRef.detectChanges(); // IMMEDIATE ACTION FIRED
	}

	// EVENT FOR MOBILE NUMBER VALIDATION ONLY DIGIT ALLOWED
	numberOnly(event): boolean {
		const charCode = (event.which) ? event.which : event.keyCode;
		if (charCode > 31 && (charCode < 48 || charCode > 57)) {
			return false;
		}
		return true;
	}
	// Email Validation
	isEmail(Email: string): boolean {
		var result: boolean;
		let regexp;
		regexp = new RegExp(/^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/);
		result = regexp.test(Email);
		return result
	}

	// MOBILE NUMBER VALIDATION
	isMobile(mobile: string): boolean {
		var result: boolean;
		let regexp;
		regexp = new RegExp(/(((^[\+,0][9][1])(((\s[0-9]{7,10})|(\S[0-9]{7,10}))|([-]\S[0-9]{7,10})))|((^[\+,0][2]{2,2})((\S[0-9]{7,8})|((([-])[0-9]{7,8})|(\s[0-9]{7,8})))))|(((^[6,7,8,9][0-9]{9,9}))|(^[0,\+](([9][1)|[6,7,8,9]))[0-9]{8,9}))(@"^[0-9]{10}$");/);
		result = regexp.test(mobile);
		return result
	}

	// TO CLOSE MENU AFTER CLICK TO OEPN
	ngAfterViewInit() {
		this.updatedistcontactservice.Toggler = new KTToggle('kt_aside_toggler', this.updatedistcontactservice.toggleOptions);
		this.updatedistcontactservice.DivToggleWidth = '100%';
		this.updatedistcontactservice.IsModelOn = false;
		this.updatedistcontactservice.displayValue = false;
		this.updatedistcontactservice.Toggler.toggleOn();
		$('#kt_aside_close_btn').click();
		setTimeout(() => {
			this.updatedistcontactservice.OpenToggle = true;
			this.updatedistcontactservice.Toggler.toggleOn();
			$('#kt_aside_close_btn').click();
		}, 500);
	}

	ngOnDestroy() {
		this.unsubscribe.forEach(sb => sb.unsubscribe());
	}

}
