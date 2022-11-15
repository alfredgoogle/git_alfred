
import React, { Component } from 'react';


export default class Footer extends Component{
    constructor(props){
        super(props);
    }
    state={

    }


    handleDelete(){
        this.props.DeletetodoFinished();
    }

    handleCheckAll(){
        this.props.CheckTodoAll();
    }


  render(){
    const {todos} =this.props;
    const finishedArr = todos.filter(item => {
        return !!item.isFinished 
    })
    return (
        <div className="todo-footer">
            <label>
                <input type="checkbox" onClick={() => this.handleCheckAll()}/>
            </label>
            <span>
                <span>已完成{finishedArr.length}</span> / 全部{todos.length}
            </span>
            <button onClick={() => {this.handleDelete()}} className="btn btn-danger">清除已完成任务</button>
        </div>
    )
  }
};
