
import React, { Component } from 'react';

import { nanoid } from 'nanoid';

export default class Header extends Component{
    constructor(props){
        super(props);
    }
    state={

    }


    handleKeyUp = (event)=>{
        const {Addtodo}  = this.props;
        const {target,keyCode} = event;

        if(keyCode !== 13){
            return
        }

        if(target.value.trim()===''){

            alert('输入的内容不能为空')

            return

        }

        Addtodo({id:nanoid(),name:target.value,status:0})

        //置空
        target.value=''
    }

  render(){
    return (
        <div className="todo-header">
                <input onKeyUp={this.handleKeyUp} type="text" placeholder="请输入你的任务名称，按回车键确认" />
            </div>
    )
  }
};
