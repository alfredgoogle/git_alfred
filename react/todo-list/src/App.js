
import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';
import { nanoid } from 'nanoid'
import Header from './components/Header';
import Footer from './components/Footer';
import List from './components/List';


export default class App extends Component{
  state ={
    todos : [
      {
        id:nanoid(),
        name:'学习前端',
        isFinished:false
      },
      {
        id:nanoid(),
        name:'学习VUE',
        isFinished:false
      },
      {
        id:nanoid(),
        name:'学习REACT',
        isFinished:false
      }
    ],
    finished:0
  }



     //增加操作，在组件中以props的形式传递给子组件
     Addtodo = (newtodo) => {
        //旧的todos
        const Oldtodos = this.state.todos

        //生成一个新的todolist
        const Newtodos = [newtodo, ...Oldtodos]

        //setState
        this.setState({ todos: Newtodos })
    }

    //删除一条待办
    Deletetodo = (id)=>{
      const oldTodos = this.state.todos;
      const newTodos = oldTodos.filter(todo=>todo.id !== id);
      this.setState({
        todos:newTodos
      })
    }

    //更新代办state
    updateFinished = (todo) =>{
      debugger;
      const todos = this.state.todos;
      todos.forEach(todoItem=>{
        if(todoItem.id === todo.id){
          todoItem.isFinished = todo.isFinished;
        }
      })
      this.setState({
        todos
      })
    }

    //选中所有
    CheckTodoAll = ()=>{
      const todos = this.state.todos;
      todos.forEach(todo=>{
        todo.isFinished = true;
      })

      this.setState({
        todos
      })
    }

    //删除已完成的任务
    DeletetodoFinished = ()=>{
      const {todos} =this.state;
      const nofinishedArr = todos.filter(item => {
          return !item.isFinished
      })
      this.setState({
        todos:nofinishedArr
      })
    }

  render(){
    const { todos } = this.state;
    return (
      <div className="todo-container">
        <div className="todo-wrap">
          <Header Addtodo={this.Addtodo}></Header>
          <List  todos={todos} Deletetodo={this.Deletetodo} finishedChange={this.updateFinished}></List>
          <Footer todos={todos} CheckTodoAll={this.CheckTodoAll} DeletetodoFinished={this.DeletetodoFinished}></Footer>
        </div>
      </div>
    
    )
  }
};
