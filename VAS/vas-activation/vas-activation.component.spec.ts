import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { VASActivationComponent } from './vas-activation.component';

describe('VASActivationComponent', () => {
  let component: VASActivationComponent;
  let fixture: ComponentFixture<VASActivationComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ VASActivationComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(VASActivationComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
