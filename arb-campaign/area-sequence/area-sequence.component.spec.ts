import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AreaSequenceComponent } from './area-sequence.component';

describe('AreaSequenceComponent', () => {
  let component: AreaSequenceComponent;
  let fixture: ComponentFixture<AreaSequenceComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AreaSequenceComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AreaSequenceComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
