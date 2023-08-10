import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ImportWatiDataArbComponent } from './import-wati-data-arb.component';

describe('ImportWatiDataArbComponent', () => {
  let component: ImportWatiDataArbComponent;
  let fixture: ComponentFixture<ImportWatiDataArbComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ImportWatiDataArbComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ImportWatiDataArbComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
