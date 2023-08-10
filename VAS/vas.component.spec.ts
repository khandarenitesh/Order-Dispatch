import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { VASComponent } from './vas.component';

describe('VASComponent', () => {
  let component: VASComponent;
  let fixture: ComponentFixture<VASComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ VASComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(VASComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
