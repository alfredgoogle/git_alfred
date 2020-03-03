import {Entity, model, property,hasMany} from '@loopback/repository';
import {Todo, TodoWithRelations} from './todo.model';
@model({settings: {}})
export class Todolist extends Entity {
  @property({
    type: 'number',
    id: true,
  })
  id?: number;

  @property({
    type: 'string',
    required: true,
  })
  title: string;

  @property({
    type: 'string',
  })
  color?: string;

  @hasMany(() => Todo)
  todos?: Todo[];


  constructor(data?: Partial<Todolist>) {
    super(data);
  }
}


export interface TodolistRelations {
  todos?: TodoWithRelations[];
  // describe navigational properties here
}

export type TodolistWithRelations = Todolist & TodolistRelations;
