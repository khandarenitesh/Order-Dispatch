import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ArbCampaignComponent } from './arb-campaign.component';

describe('ArbCampaignComponent', () => {
  let component: ArbCampaignComponent;
  let fixture: ComponentFixture<ArbCampaignComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ArbCampaignComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ArbCampaignComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
