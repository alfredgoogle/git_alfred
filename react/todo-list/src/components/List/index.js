
import React, { Component } from 'react';
import Item from '../Item';


export default class List extends Component{

  render(){
    const {todos,Deletetodo,finishedChange}=this.props
    return (
      <div className="todolist">
        {
            todos.map(
                todo=>{
                    return (
                        <Item key={todo.id} {...todo} Deletetodo={Deletetodo} finishedChange={finishedChange}></Item>
                    )
                }
            )
        }
      </div>
    )
  }
};
