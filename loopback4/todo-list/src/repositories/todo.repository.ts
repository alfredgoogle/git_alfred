import { BelongsToAccessor,
  DefaultCrudRepository,
  juggler,
  repository,} from '@loopback/repository';
import {Todo, TodoRelations, Todolist} from '../models';
import {TodolistRepository} from './todolist.repository';
import {DbDataSource} from '../datasources';
import {inject, Getter} from '@loopback/core';

export class TodoRepository extends DefaultCrudRepository<
  Todo,
  typeof Todo.prototype.id,
  TodoRelations
> {

  public readonly todoList: BelongsToAccessor<
    Todolist,
    typeof Todo.prototype.id
  >;

  constructor(
    @inject('datasources.db') dataSource: juggler.DataSource,
    @repository.getter('TodoListRepository')
    protected todoListRepositoryGetter: Getter<TodolistRepository>,
  ) {
    super(Todo, dataSource);
    this.todoList = this.createBelongsToAccessorFor(
      'todoList',
      todoListRepositoryGetter,
    );
    
    // Add this line to register the resolver
    this.registerInclusionResolver('todoList', this.todoList.inclusionResolver);
  }
}
