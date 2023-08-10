import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { Routes, RouterModule } from '@angular/router';
import { AuthGuard } from '../../../../app/core/auth';

import {
	MatButtonModule, MatInputModule, MatTableModule, MatStepperModule, MatProgressSpinnerModule, MatAutocompleteModule,
	MatRippleModule, MatFormFieldModule, MatSelectModule, MatDatepickerModule, MatCheckboxModule, MatListModule, MatIconModule,
	MatPaginatorModule, MatSortModule, MatRadioModule, MatTooltipModule
} from '@angular/material';
import { MatTableExporterModule } from 'mat-table-exporter';
import { ToastrService } from 'ngx-toastr';
import { GetSessionService } from '../../../services/globalsession.service';
import { PartialsModule } from '../../partials/partials.module';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { CoreModule } from '../../../../../src/app/core/core.module';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { DataTablesModule } from 'angular-datatables';

import { ArbCampaignComponent } from './arb-campaign/arb-campaign.component';
import { ARBComponent } from './arb-component';
import { ArbDistributorCampaignComponent } from './arb-distributor-campaign/arb-distributor-campaign.component';
import { ImportWatiDataArbComponent } from './import-wati-data-arb/import-wati-data-arb.component';
import { ArbCampaignUploadComponent } from './arb-campaign-upload/arb-campaign-upload.component';
import { AreaSequenceComponent } from './area-sequence/area-sequence.component';

const arbconfigurationDetailsRoutes: Routes = [
	{
		path: '',
		children: [
			{ path: 'ArbConfigurationDetails', component: ArbCampaignComponent, canActivate: [AuthGuard], data: { roles: ['1'] } },
			{ path: 'ArbDistributorCampaign', component: ArbDistributorCampaignComponent, canActivate: [AuthGuard], data: { roles: ['3'] } },
			{ path: 'ImportWatiDataARB', component: ImportWatiDataArbComponent, canActivate: [AuthGuard], data: { roles: ['1'] } },
			{ path: 'ARBCampaignUpload', component: ArbCampaignUploadComponent, canActivate: [AuthGuard], data: { roles: ['1'] } },
			{ path: 'AreaSequence', component: AreaSequenceComponent, canActivate: [AuthGuard], data: { roles: ['3'] } },
		]
	}
];

const modules = [
	MatButtonModule, MatFormFieldModule, MatInputModule, MatRippleModule, MatTableModule,
	MatAutocompleteModule, MatSelectModule, MatDatepickerModule, MatStepperModule, MatProgressSpinnerModule, MatSortModule,
	MatPaginatorModule, MatIconModule, MatTableExporterModule, MatCheckboxModule, MatRadioModule, MatListModule, MatTooltipModule
]

@NgModule({
	declarations: [ARBComponent, ArbCampaignComponent, ArbDistributorCampaignComponent, ImportWatiDataArbComponent, ArbCampaignUploadComponent, AreaSequenceComponent],

	providers: [GetSessionService, ToastrService],
	imports: [
		modules,
		CommonModule,
		FormsModule,
		ReactiveFormsModule,
		PartialsModule,
		CoreModule,
		NgbModule,
		DataTablesModule,
		RouterModule.forChild(arbconfigurationDetailsRoutes)
	],
	exports: [RouterModule]
})
export class ArbCampaignModule { }
