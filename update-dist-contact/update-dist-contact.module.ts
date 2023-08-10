import { Routes, RouterModule } from '@angular/router';
import { AuthGuard } from '../../../../app/core/auth';
import { NgModule } from '@angular/core';
import { MatTableExporterModule } from 'mat-table-exporter';
import { ToastrService } from 'ngx-toastr';
import { GetSessionService } from '../../../services/globalsession.service';
import { PartialsModule } from '../../partials/partials.module';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { CoreModule } from '../../../../../src/app/core/core.module';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { DataTablesModule } from 'angular-datatables';
import { CommonModule } from '@angular/common';
import {
	MatButtonModule, MatInputModule, MatTableModule, MatProgressSpinnerModule, MatAutocompleteModule,
	MatRippleModule, MatFormFieldModule, MatSelectModule, MatCheckboxModule, MatIconModule, MatPaginatorModule, MatSortModule, MatRadioModule, MatTooltipModule
} from '@angular/material';
import { UpdateDistContactComponent } from './update-dist-contact.component';

const UpdateDistributorContactRoutes: Routes = [
	{
		path: '',
		children: [
			{ path: 'UpdateDistributorContact', component: UpdateDistContactComponent, canActivate: [AuthGuard], data: { roles: ['1'] } }
		]
	}
];

const modules = [
	MatButtonModule, MatFormFieldModule, MatInputModule, MatRippleModule, MatTableModule,
	MatAutocompleteModule, MatSelectModule, MatProgressSpinnerModule, MatSortModule,
	MatPaginatorModule, MatIconModule, MatTableExporterModule, MatCheckboxModule, MatRadioModule
];

@NgModule({
	declarations: [UpdateDistContactComponent],
	providers: [GetSessionService, ToastrService],
	imports: [
		modules,
		FormsModule,
		ReactiveFormsModule,
		CommonModule,
		PartialsModule,
		CoreModule,
		NgbModule,
		MatTooltipModule,
		DataTablesModule,
		RouterModule.forChild(UpdateDistributorContactRoutes)
	],
	exports: [RouterModule]
})
export class UpdateDistContactModule { }
