import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ArbCampaignUploadComponent } from './arb-campaign-upload.component';

describe('ArbCampaignUploadComponent', () => {
  let component: ArbCampaignUploadComponent;
  let fixture: ComponentFixture<ArbCampaignUploadComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ArbCampaignUploadComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ArbCampaignUploadComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
