
import React, { Component } from 'react';
import Item from '../Item';


export default class ListItem extends Component{
    consturctor(props){
        super(props);
    }
    state={

    }

  render(){
    const {id,name, isFinished}=this.props
    return (
        <li>
            <label>
                <input type="checkbox"/>
                <span>{name}</span>
            </label>
            <button onClick={() => {this.handleDelete(id)}} className="btn btn-danger" style={{ display: 'block' }}>删除</button>
        </li>
    )
  }
};
