import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Person } from '../models/person';
import { environment } from '../../environments/environment';

@Injectable()
export class PersonService {
  private baseUrl = `${environment.apiUrl}/persons`;

  constructor(private http: HttpClient) {}

  getAll(): Observable<Person[]> {
    return this.http.get<Person[]>(this.baseUrl);
  }

  get(id: number): Observable<Person> {
    return this.http.get<Person>(`${this.baseUrl}/${id}`);
  }

  create(person: Person): Observable<Person> {
    return this.http.post<Person>(this.baseUrl, person);
  }

  update(person: Person): Observable<void> {
    return this.http.put<void>(`${this.baseUrl}/${person.id}`, person);
  }

  delete(id: number): Observable<void> {
    return this.http.delete<void>(`${this.baseUrl}/${id}`);
  }
}
