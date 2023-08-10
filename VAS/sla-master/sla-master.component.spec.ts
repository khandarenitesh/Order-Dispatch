import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { SLAMasterComponent } from './sla-master.component';

describe('SLAMasterComponent', () => {
  let component: SLAMasterComponent;
  let fixture: ComponentFixture<SLAMasterComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ SLAMasterComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(SLAMasterComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
