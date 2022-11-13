
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

  render(){
    const { todos } = this.state;
    return (
      <div>
        <List todos={todos}></List>
      </div>
    )
  }
};
