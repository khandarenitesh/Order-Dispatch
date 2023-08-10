import { Injectable } from '@angular/core';
import { GlobalVariable } from '../common.service';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { tap, map } from 'rxjs/operators';
import { VASModel } from '../../models/VAS/vas.model';

@Injectable({
	providedIn: 'root'
})
export class VasService {

	private API = GlobalVariable.BASE_API_URL;

	private GetSLAList_Url = `${this.API}VAS/SLAList/`;
	private SLAAddEdit_Url = `${this.API}VAS/SLAAddEdit/`;
	private ConsumerAddEdit_Url = `${this.API}VAS/ConsumersAddUpdate/`;
	private GetVASConsumerList_Url = `${this.API}VAS/VASConsumerList/`
	private GetRefillPendingList_Url = `${this.API}VAS/RefillBookingPendingList/`
	private SaveDelboyAssign_Url = `${this.API}VAS/AssignDeliveryBoyAdd/`
	private AddUpdateService_Url = `${this.API}VAS/AddUpdateService/`;
	private ServiceReqList_Url = `${this.API}VAS/ServiceReqList/`;
	private VASCounts_Url = `${this.API}VAS/VASCounts/`;
	private GetBookingReportList_Url = `${this.API}VAS/BookingReportHistoryList`


	constructor(private _httpClient: HttpClient) { }

	GetSLAList(flag: number): Observable<any> {
		return this._httpClient.get<any>(this.GetSLAList_Url + flag, { observe: 'response' })
			.pipe(map(result => {
				// login successful if there's a jwt token in the response
				if (result) {
				}
				return result.body;
			}), tap(() => { // Add Thid Tap to all services
			}, error => {
				console.log(error.status);
				if (error.status === '401') {
				}
			}));
	}

	AddEditSLA(model: any): Observable<any> {
		return this._httpClient.post<any>(this.SLAAddEdit_Url, model, { observe: 'response' })
			.pipe(map(result => {
				// login successful if there's a jwt token in the response
				if (result) {
				}
				return result.body;
			}), tap(() => { // Add Thid Tap to all services
			}, error => {
				console.log(error.status);
				if (error.status === '401') {
				}
			}));
	}

	GetVASConsumerList_Service(DistributorCode: string): Observable<any> {
		return this._httpClient.get<any>(this.GetVASConsumerList_Url + DistributorCode, { observe: 'response' })
			.pipe(map(result => {
				// login successful if there's a jwt token in the response
				if (result) {
				}
				return result.body;
			}), tap(() => { // Add Thid Tap to all services
			}, error => {
				console.log(error.status);
				if (error.status === '401') {
				}
			}));
	}

	AddEditConsumer(model: any): Observable<any> {
		return this._httpClient.post<any>(this.ConsumerAddEdit_Url, model, { observe: 'response' })
			.pipe(map(result => {
				// login successful if there's a jwt token in the response
				if (result) {
				}
				return result.body;
			}), tap(() => { // Add Thid Tap to all services
			}, error => {
				console.log(error.status);
				if (error.status === '401') {
				}
			}));
	}

	GetRefillPendingList(DistributorCode: string, FromDate: Date, Todate: Date, flag: string): Observable<any> {
		return this._httpClient.get<any>(this.GetRefillPendingList_Url + DistributorCode + '/' + FromDate + '/' + Todate + '/' + flag, { observe: 'response' })
			.pipe(map(result => {
				// login successful if there's a jwt token in the response
				if (result) {
				}
				return result.body;
			}), tap(() => { // Add Thid Tap to all services
			}, error => {
				console.log(error.status);
				if (error.status === '401') {
				}
			}));
	}

	SaveDelboyAssign_Service(model: any): Observable<any> {
		return this._httpClient.post<any>(this.SaveDelboyAssign_Url, model, { observe: 'response' })
			.pipe(map(result => {
				// login successful if there's a jwt token in the response
				if (result) {
				}
				return result.body;
			}), tap(() => { // Add Thid Tap to all services
			}, error => {
				console.log(error.status);
				if (error.status === '401') {
				}
			}));
	}

	ServiceReqList_Service(DistributorCode: string): Observable<any> {
		return this._httpClient.get<any>(this.ServiceReqList_Url + DistributorCode, { observe: 'response' })
			.pipe(map(result => {
				// login successful if there's a jwt token in the response
				if (result) {
				}
				return result.body;
			}), tap(() => { // Add Thid Tap to all services
			}, error => {
				console.log(error.status);
				if (error.status === '401') {
				}
			}));
	}

	AddEditServiceReq_Service(model: any): Observable<any> {
		return this._httpClient.post<any>(this.AddUpdateService_Url, model, { observe: 'response' })
			.pipe(map(result => {
				// login successful if there's a jwt token in the response
				if (result) {
				}
				return result.body;
			}), tap(() => { // Add Thid Tap to all services
			}, error => {
				console.log(error.status);
				if (error.status === '401') {
				}
			}));
	}

	VASCount_Service(DistributorCode: string): Observable<any> {
		return this._httpClient.get<any>(this.VASCounts_Url + DistributorCode, { observe: 'response' })
			.pipe(map(result => {
				// login successful if there's a jwt token in the response
				if (result) {
				}
				return result.body;
			}), tap(() => { // Add Thid Tap to all services
			}, error => {
				console.log(error.status);
				if (error.status === '401') {
				}
			}));
	}

	GetBookingReport_service(DataModel: any): Observable<any> {
		return this._httpClient.post<any>(this.GetBookingReportList_Url,DataModel,{ observe: 'response' })
		.pipe(
		  map(result => {
			// login successful if there's a jwt token in the response
			if (result) {
			}
			return result.body;
		  }),
		  tap(data => { // Add Thid Tap to all services
			// this._JWTAccountService.ReadStatusCode(data.status)
		  },
			error => {
			  console.log(error.status);
			  if (error.status === '401') {
			   // this._JWTAccountService.RefreshToken();
			  }
			}
		  )
		);
	  }
}
