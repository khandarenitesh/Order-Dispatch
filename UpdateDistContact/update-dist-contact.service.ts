import { Injectable } from '@angular/core';
import { ToggleOptions } from '../../core/_base/metronic';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { GlobalVariable } from '../common.service';
import { tap, map } from 'rxjs/operators';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class UpdateDistContactService {

  private API = GlobalVariable.BASE_API_URL;
  private GetDistributorList_Url = `${this.API}Masters/GetdistributorList`;
  private UpdateDistContact_Url = `${this.API}Masters/UpdateDistributorContactDetails`;
  // private saveDistConnTypePriceDtlsAPI = `${this.API}Masters/AddEditDistConnTypePriceDtls/`;

  OpenToggle: any = false;
  IsModelOn: any = false;
  displayValue: any = true;
  DivToggleWidth: any = '100%';

  toggleOptions: ToggleOptions = {
    target: 'body',
    targetState: 'kt-aside--minimize',
    togglerState: 'kt-aside__brand-aside-toggler--active'
  };
  Toggler: any = new KTToggle('kt_aside_toggler', this.toggleOptions);

  constructor(private _httpClient: HttpClient) { }

  // Get Distributor List
  GetDistDetails(Dtls: any): Observable<any> {
    return this._httpClient.post<any>(this.GetDistributorList_Url, Dtls, { observe: 'response' })
      .pipe(map(result => {
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

  // Update distributor contact number
  UpdateDistbutorContactDetails(model: any): Observable<any> {
    return this._httpClient.post<any>(this.UpdateDistContact_Url, model, { observe: 'response' })
      .pipe(map(result => {

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
}
