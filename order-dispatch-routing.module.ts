import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';

import { OrderDispatchComponent } from './order-dispatch.component';

// Picklist Add
import { PicklistAddComponent } from './picklist-add/picklist-add.component';
// Picklist Verify
import { PicklistVerifyComponent } from './picklist-verify/picklist-verify.component';
import { InvoiceListComponent } from './invoice-list/invoice-list.component';
import { ImportInvoiceComponent } from './import-invoice/import-invoice.component';
import { ReadyToDispatchComponent } from './ready-to-dispatch/ready-to-dispatch.component';
import { AssignTransportModeComponent } from './assign-transport-mode/assign-transport-mode.component';
import { InvoiceCancelComponent } from './invoice-cancel/invoice-cancel.component';
import { ImportLRDetailsComponent } from './import-lr-details/import-lr-details.component';
import { ReAllotPickerComponent } from './re-allot-picker/re-allot-picker.component';
import { GenerateStickerComponent } from './generate-sticker/generate-sticker.component';
import { ResolveConcernComponent } from './resolve-concern/resolve-concern.component';
import { ResolveConcernInvoiceComponent } from './resolve-concern-invoice/resolve-concern-invoice.component';
import { AssignTransportEditComponent} from './assign-transport-edit/assign-transport-edit.component'
import { PriorityInvoiceListComponent } from './priority-invoice-list/priority-invoice-list.component';

const routes: Routes = [
  {
    path: '',
    component: OrderDispatchComponent,
    children: [
      {
        path: 'picklist-add',
        component: PicklistAddComponent,
      },
      {
        path: 'picklist-operation',
        component: PicklistVerifyComponent,
      },
      {
        path: 'Re-Allot-picklist',
        component: ReAllotPickerComponent,
      },
      {
        path: 'invoice-list',
        component: InvoiceListComponent,
      },
      {
        path: 'import-invoice',
        component: ImportInvoiceComponent,
      },
      {
        path: 'ready-to-dispatch',
        component: ReadyToDispatchComponent,
      },
      {
        path: 'assign-transport-mode',
        component: AssignTransportModeComponent,
      },
      {
        path: 'assign-transport-edit',
        component: AssignTransportEditComponent,
      },
      {
        path: 'invoice-cancel-list',
        component: InvoiceCancelComponent,
      },
      {
        path: 'import-lr',
        component: ImportLRDetailsComponent,
      },
      {
        path: 'print-sticker',
        component: GenerateStickerComponent,
      },
      {
        path: 'resolve-concern',
        component: ResolveConcernComponent,
      },
      {
        path:'resolve-invoice',
        component:ResolveConcernInvoiceComponent
      },
      {
        path: 'priority-invoice-list',
        component: PriorityInvoiceListComponent,
      }

    ],
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class OrderDispatchRoutingModule { }
