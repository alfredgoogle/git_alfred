import {Todo, Todolist, TodolistRelations} from '../models';
import {DbDataSource} from '../datasources';
import {inject,Getter} from '@loopback/core';
import {
  DefaultCrudRepository,
  HasManyRepositoryFactory,
  juggler,
  repository,
} from '@loopback/repository';
import {TodoRepository} from './todo.repository';

export class TodolistRepository extends DefaultCrudRepository<
  Todolist,
  typeof Todolist.prototype.id,
  TodolistRelations
> {

  public readonly todos: HasManyRepositoryFactory<
    Todo,
    typeof Todolist.prototype.id
  >;

  constructor(
    @inject('datasources.db') dataSource: juggler.DataSource,
    @repository.getter(TodoRepository) protected todoRepositoryGetter: Getter<TodoRepository>,
  ) {
    super(Todolist, dataSource);
    this.todos = this.createHasManyRepositoryFactoryFor(
      'todos',
      todoRepositoryGetter,
    );
    this.registerInclusionResolver('todos', this.todos.inclusionResolver);
  }
}
