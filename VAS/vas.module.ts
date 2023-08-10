import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { VASComponent } from '../vas/vas.component';
import { SLAMasterComponent } from './sla-master/sla-master.component';
import { RouterModule, Routes } from '@angular/router';
import { AuthGuard } from '../../../../app/core/auth';
import {
	MatAutocompleteModule, MatFormFieldModule, MatInputModule, MatProgressSpinnerModule, MatButtonModule,
	MatRippleModule, MatTableModule, MatSelectModule, MatSortModule, MatCheckboxModule, MatRadioModule, MatPaginatorModule,
	MatDatepickerModule, MatIconModule
} from '@angular/material';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { PartialsModule } from '../../partials/partials.module';
import { DataTablesModule } from 'angular-datatables';
import { VASActivationComponent } from './vas-activation/vas-activation.component';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { MAT_DATE_LOCALE } from '@angular/material/core';
import { BookingDetailsComponent } from './booking-details/booking-details.component';
import { AddServiceComponent } from './add-service/add-service.component';
import { BookingReportComponent } from './booking-report/booking-report.component';
import { MatStepperModule, MatTooltipModule } from '@angular/material';
import { MatTableExporterModule } from 'mat-table-exporter';
import { CoreModule } from '../../../core/core.module';

const VASRoutes: Routes = [
	{
		path: '',
		children: [
			{ path: 'SLAMaster', component: SLAMasterComponent, canActivate: [AuthGuard], data: { roles: ['1'] } },
			{ path: 'VASActivation', component: VASActivationComponent, canActivate: [AuthGuard], data: { roles: ['3'] } },
			{ path: 'RefillPendingBooking', component: BookingDetailsComponent, canActivate: [AuthGuard], data: { roles: ['3'] } },
			{ path: 'AddUpdateService', component: AddServiceComponent, canActivate: [AuthGuard], data: { roles: ['3'] } },
			{ path: 'BookingReport', component: BookingReportComponent, canActivate: [AuthGuard], data: { roles: ['3'] } }
		]
	}
];

const Modules = [
	MatButtonModule, MatFormFieldModule, MatInputModule, MatRippleModule, MatTableModule, FormsModule, ReactiveFormsModule, PartialsModule, MatDatepickerModule,
	MatAutocompleteModule, MatSelectModule, MatProgressSpinnerModule, MatSortModule, MatCheckboxModule, MatRadioModule, DataTablesModule, MatPaginatorModule, MatIconModule,
	MatStepperModule, MatTableExporterModule
];

@NgModule({
	declarations: [VASComponent, SLAMasterComponent, VASActivationComponent, BookingDetailsComponent, AddServiceComponent, BookingReportComponent],
	imports: [
		FormsModule,
		ReactiveFormsModule,
		CommonModule,
		PartialsModule,
		CoreModule,
		NgbModule,
		MatTooltipModule,
		DataTablesModule,
		CommonModule,
		RouterModule.forChild(VASRoutes),
		Modules,
		NgbModule
	],
	providers: [
		{ provide: MAT_DATE_LOCALE, useValue: 'en-GB' },
	]
})
export class VASModule { }
