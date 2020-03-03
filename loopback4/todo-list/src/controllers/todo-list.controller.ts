import {
  Count,
  CountSchema,
  Filter,
  repository,
  Where,
} from '@loopback/repository';
import {
  post,
  param,
  get,
  getFilterSchemaFor,
  getModelSchemaRef,
  getWhereSchemaFor,
  patch,
  put,
  del,
  requestBody,
} from '@loopback/rest';
import {Todolist} from '../models';
import {TodolistRepository} from '../repositories';

export class TodoListController {
  constructor(
    @repository(TodolistRepository)
    public todolistRepository : TodolistRepository,
  ) {}

  @post('/todolists', {
    responses: {
      '200': {
        description: 'Todolist model instance',
        content: {'application/json': {schema: getModelSchemaRef(Todolist)}},
      },
    },
  })
  async create(
    @requestBody({
      content: {
        'application/json': {
          schema: getModelSchemaRef(Todolist, {exclude: ['id']}),
        },
      },
    })
    todolist: Omit<Todolist, 'id'>,
  ): Promise<Todolist> {
    return this.todolistRepository.create(todolist);
  }

  @get('/todolists/count', {
    responses: {
      '200': {
        description: 'Todolist model count',
        content: {'application/json': {schema: CountSchema}},
      },
    },
  })
  async count(
    @param.query.object('where', getWhereSchemaFor(Todolist)) where?: Where<Todolist>,
  ): Promise<Count> {
    return this.todolistRepository.count(where);
  }

  @get('/todolists', {
    responses: {
      '200': {
        description: 'Array of Todolist model instances',
        content: {
          'application/json': {
            schema: {type: 'array', items: getModelSchemaRef(Todolist,{includeRelations: true})},
          },
        },
      },
    },
  })
  async find(
    @param.query.object('filter', getFilterSchemaFor(Todolist)) filter?: Filter<Todolist>,
  ): Promise<Todolist[]> {
    return this.todolistRepository.find(filter);
  }

  @patch('/todolists', {
    responses: {
      '200': {
        description: 'Todolist PATCH success count',
        content: {'application/json': {schema: CountSchema}},
      },
    },
  })
  async updateAll(
    @requestBody({
      content: {
        'application/json': {
          schema: getModelSchemaRef(Todolist, {partial: true}),
        },
      },
    })
    todolist: Todolist,
    @param.query.object('where', getWhereSchemaFor(Todolist)) where?: Where<Todolist>,
  ): Promise<Count> {
    return this.todolistRepository.updateAll(todolist, where);
  }

  @get('/todolists/{id}', {
    responses: {
      '200': {
        description: 'Todolist model instance',
        content: {'application/json': {schema: getModelSchemaRef(Todolist, {includeRelations: true})}},
      },
    },
  })
  async findById(@param.path.number('id') id: number): Promise<Todolist> {
    return this.todolistRepository.findById(id);
  }

  @patch('/todolists/{id}', {
    responses: {
      '204': {
        description: 'Todolist PATCH success',
      },
    },
  })
  async updateById(
    @param.path.number('id') id: number,
    @requestBody({
      content: {
        'application/json': {
          schema: getModelSchemaRef(Todolist, {partial: true}),
        },
      },
    })
    todolist: Todolist,
  ): Promise<void> {
    await this.todolistRepository.updateById(id, todolist);
  }

  @put('/todolists/{id}', {
    responses: {
      '204': {
        description: 'Todolist PUT success',
      },
    },
  })
  async replaceById(
    @param.path.number('id') id: number,
    @requestBody() todolist: Todolist,
  ): Promise<void> {
    await this.todolistRepository.replaceById(id, todolist);
  }

  @del('/todolists/{id}', {
    responses: {
      '204': {
        description: 'Todolist DELETE success',
      },
    },
  })
  async deleteById(@param.path.number('id') id: number): Promise<void> {
    await this.todolistRepository.deleteById(id);
  }
}
