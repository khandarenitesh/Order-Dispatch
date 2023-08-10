import { TestBed } from '@angular/core/testing';

import { UpdateDistContactService } from './update-dist-contact.service';

describe('UpdateDistContactService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: UpdateDistContactService = TestBed.get(UpdateDistContactService);
    expect(service).toBeTruthy();
  });
});
