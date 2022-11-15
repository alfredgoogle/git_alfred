
import React, { Component } from 'react';
import Item from '../Item';


export default class ListItem extends Component{
    constructor(props){
        super(props);
        this.changeFinished = this.changeFinished.bind(this);
    }

    
    state={
        // isFinished:false
    }


    handleDelete(id){
        if(window.confirm('确认删除吗')){
            this.props.Deletetodo(id);
        }
    }


    changeFinished(){
        debugger;
        let {isFinished} = this.props;
        isFinished = !isFinished;

        let obj={
            id: this.props.id,
            name: this.props.name,
            isFinished
        }

        this.props.finishedChange(obj);
    }

    componentDidUpdate(){

    }

    componentWillUpdate(nextProps, nextState) {
        // 组件初始化时不调用，只有在组件将要更新时才调用，此时可以修改state
        debugger;
      }

  render(){
    const {id,name, isFinished}=this.props;
    return (
        <li>
            <label>
                <input type="checkbox" checked={isFinished?true: false} onChange={this.changeFinished}/>
                <span>{name}</span>
            </label>
            <button onClick={() => {this.handleDelete(id)}} className="btn btn-danger" style={{ display: 'block' }}>删除</button>
        </li>
    )
  }
};
