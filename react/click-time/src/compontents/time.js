
import React, { Component } from 'react';


export default class Time extends Component{
    constructor(props){
        super(props);
    }
    state={
        startIime:'',
        diffTime:'',
        isStart:false,
        timeId:null
    }

    // componentDidMount(){
    //     this.start();
    // }

    componentWillUnmount(){
        clearInterval(this.diffTime);
    }

    

    componentWillReceiveProps(nextProps){
        let {isStart} = nextProps;
        if(isStart !== this.state.isStart){
            this.setState(
                {
                    isStart
                },()=>{
                    if(isStart){
                        this.start();
                    }else{
                        this.stop();
                    }
                }
            )
        }
    }
    componentWillUpdate(nextProps){
       
    }

    start(){
        let startIime = +new Date();
        this.setState({
            startIime
        })
        
        this.timeId = setInterval(()=>this.tick(),100)
    }

    tick(){
        let diffTime = +new Date() - this.state.startIime;
        this.setState({
            diffTime
        })
    }

    stop(){
        clearInterval(this.timeId);
    }




  render(){
    let {diffTime} = this.state;
    return (
        <div className="time">
            {diffTime/1000}
        </div>
    )
  }
};
