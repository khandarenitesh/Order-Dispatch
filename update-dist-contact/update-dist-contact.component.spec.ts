import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { UpdateDistContactComponent } from './update-dist-contact.component';

describe('UpdateDistContactComponent', () => {
  let component: UpdateDistContactComponent;
  let fixture: ComponentFixture<UpdateDistContactComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ UpdateDistContactComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(UpdateDistContactComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
