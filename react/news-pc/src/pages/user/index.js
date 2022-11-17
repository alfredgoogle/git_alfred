import React, { Component } from 'react'
import { Space, Table, Tag,Spin } from 'antd';
import UserApi from '../../serviceModel/user.js';

class User extends Component {
  state = {
    isLoading: false,
    data:[],
    columns:[
      {
        title: '用户名',
        dataIndex: 'username',
        key: 'username',
      },
      {
        title: '手机',
        dataIndex: 'telephone',
        key: 'telephone',
      },
      // {
      //   title: '性别',
      //   dataIndex: 'telephone',
      //   key: 'telephone',
      // }
    ],
    page:{}
  }
   componentWillMount() {
    this.loadData();
  }

   async loadData(){
    this.setState({
      isLoading:true
    })
    let res = await UserApi.userList({
      pageNum:1,
      pageSize:10
    })
    if(res.data && res.data.records){

      let {page} = this.state;
      page.total = res.data.total;
      this.setState({
        data:res.data.records,
        page:page,
        isLoading:false
      })
    }
  }

  render() {
    let {data,columns,isLoading} = this.state;
    console.log('data',data)
    return (
      isLoading? <Spin></Spin> :
      <div>
        <Table columns={columns} dataSource={data}/>
      </div>
    )
  }
}
export default User