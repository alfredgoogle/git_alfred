import {Entity, model, property, belongsTo} from '@loopback/repository';
import {Todolist, TodolistWithRelations} from './todolist.model';
@model({settings: {}})
export class Todo extends Entity {
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
  desc?: string;

  @property({
    type: 'boolean',
  })
  isComplete?: boolean;

  @property({
    type: 'string',
  })
  remindAtAddress?: string; // address,city,zipcode

  @property({
    type: 'string',
  })
  remindAtGeo?: string; // latitude,longitude

  @belongsTo(() => Todolist)
  todoListId: number;


  constructor(data?: Partial<Todo>) {
    super(data);
  }
}

export interface TodoRelations {
  // describe navigational properties here
  todoList?: TodolistWithRelations;
}


export type TodoWithRelations = Todo & TodoRelations;
