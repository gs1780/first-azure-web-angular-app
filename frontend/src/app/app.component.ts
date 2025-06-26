import { Component, OnInit } from '@angular/core';
import { PersonService } from './services/person.service';
import { Person } from './models/person';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html'
})
export class AppComponent implements OnInit {
  persons: Person[] = [];
  newPerson: Partial<Person> = {};

  constructor(private personService: PersonService) {}

  ngOnInit() {
    this.load();
  }

  load() {
    this.personService.getAll().subscribe(p => this.persons = p);
  }

  add() {
    if (this.newPerson.firstName && this.newPerson.lastName) {
      this.personService.create(this.newPerson as Person).subscribe(() => {
        this.newPerson = {};
        this.load();
      });
    }
  }

  delete(id: number) {
    this.personService.delete(id).subscribe(() => this.load());
  }
}
