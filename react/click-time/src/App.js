import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';
import Time from './compontents/time';

export default class App extends  Component{

  state={
    isStart:false
  }

  clickBtn(){
    let {isStart} = this.state;
    this.setState({
      isStart:!isStart
    })
  }

  render(){
    let {isStart} = this.state;
    return (
      <div className="App">
        <div onClick={this.clickBtn.bind(this)}>{isStart ? '结束' : '开始'}</div>
        <Time isStart={isStart}/>
      </div>
    );
  }

}

