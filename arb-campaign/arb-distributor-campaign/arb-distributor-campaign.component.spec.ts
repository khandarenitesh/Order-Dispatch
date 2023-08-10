import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ArbDistributorCampaignComponent } from './arb-distributor-campaign.component';

describe('ArbDistributorCampaignComponent', () => {
  let component: ArbDistributorCampaignComponent;
  let fixture: ComponentFixture<ArbDistributorCampaignComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ArbDistributorCampaignComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ArbDistributorCampaignComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
