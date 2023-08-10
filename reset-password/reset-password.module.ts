import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { ResetPasswordComponent } from './reset-password/reset-password.component';
import { Routes, RouterModule } from '@angular/router';
import { AuthGuard } from '../../../core/auth/_guards/auth.guard';
import {
	MatButtonModule, MatInputModule, MatTableModule, MatStepperModule, MatProgressSpinnerModule, MatAutocompleteModule,
	MatRippleModule, MatFormFieldModule, MatSelectModule, MatDatepickerModule, MatCheckboxModule, MatListModule, MatIconModule,
	MatPaginatorModule, MatSortModule, MatRadioModule, MatTooltipModule
} from '@angular/material';
import { MatTableExporterModule } from 'mat-table-exporter';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { PartialsModule } from '../../partials/partials.module';
import { CoreModule } from '../../../core/core.module';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { DataTablesModule } from 'angular-datatables';

const ResetPasscRoutes: Routes = [
	{
		path: '',
		children: [
			{ path: 'ResetPassword', component: ResetPasswordComponent, canActivate: [AuthGuard], data: { roles: ['1'] } },
		]
	}
];

const modules = [
	MatButtonModule, MatFormFieldModule, MatInputModule, MatRippleModule, MatTableModule,
	MatAutocompleteModule, MatSelectModule, MatDatepickerModule, MatStepperModule, MatProgressSpinnerModule, MatSortModule,
	MatPaginatorModule, MatIconModule, MatTableExporterModule, MatCheckboxModule, MatRadioModule, MatListModule, MatTooltipModule
]

@NgModule({
  declarations: [ResetPasswordComponent,ResetPasswordComponent],
  imports: [
    	CommonModule,
		modules,
		FormsModule,
		ReactiveFormsModule,
		PartialsModule,
		CoreModule,
		NgbModule,
		DataTablesModule,
		RouterModule.forChild(ResetPasscRoutes)
  ],
  exports: [RouterModule]
})
export class ResetPasswordModule { }
