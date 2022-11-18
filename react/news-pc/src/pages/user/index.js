import React, { Component } from 'react'
import { Space, Table, Tag,Spin, Button,Modal,message } from 'antd';
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
      {
        title: '性别',
        dataIndex: 'sex',
        key: 'sex',
        render: (text) => text == 1 ? '男' : '女',
      },
      {
        title: 'Action',
        key: 'action',
        render: (_, record) => (
          <Space size="middle">
            <a onClick={this.onViewDetail.bind(this,record)}>详情</a>
            <a onClick={this.onEdit.bind(this,record)}>编辑</a>
            <a onClick={this.onDelete.bind(this,record)}>删除</a>
          </Space>
        ),
      },
    ],
    isDeleteModalOpen:false,
    viewUser:null,
    page:{
      current:1,
      defaultPageSize:10,
      onChange:this.onPageChange.bind(this)
    }
  }
  componentWillMount() {
    this.loadData();
  }



  onPageChange(pageNum){
    this.loadData(pageNum);
  }

  //查看详情
  onViewDetail( record, event){
    // event.prevent
    console.log('event',event)
    console.log('record',record)

  }

  onDelete(record){
    console.log('record',record)
    this.setState({
      isDeleteModalOpen:true,
      viewUser:{...record}
    })
  }

  onCreate(){
 
  }

  onEdit(){

  }
  

  //取消删除
  handleDeleteCancel(){
    this.setState({
      isDeleteModalOpen:false
    })
  }

  //确认删除
  async handleDeleteOk(){
    let user = this.state.viewUser;
    let res = await UserApi.userDelete(user.id);
    if(res.data){
      message.success('删除成功');
      this.setState({
        isDeleteModalOpen:false
      })
      this.loadData(1);
    }
  }

  //加载用户数据
  async loadData(pageNum){
    this.setState({
      isLoading:true
    })
    let res = await UserApi.userList({
      pageNum:pageNum || 1,
      pageSize:10
    })
    if(res.data && res.data.records){
      res.data.records = res.data.records.map(record => {
        record.key  = record.id;
        return record;
      })

      let {page} = this.state;
      page.total = res.data.total;
      page.total = res.data.total;
      page.current = pageNum;
      // page.defaultPageSize=10;
      page.current=res.data.current;
      this.setState({
        data:res.data.records,
        page:page,
        isLoading:false
      })
    }
  }

  render() {
    let {data,columns,isLoading,page,isDeleteModalOpen} = this.state;
    console.log('data',data)
    return (
      isLoading ? <Spin></Spin> :
      <div>
        <Button type="primary" onClick={this.onCreate.bind(this)}>新建</Button>
        <Table columns={columns} dataSource={data} pagination={page}/>
        <Modal title="删除用户" cancelText="取消"  okText="确认"  open={isDeleteModalOpen} onOk={this.handleDeleteOk.bind(this)} onCancel={this.handleDeleteCancel.bind(this)}>
        <p>是否确认删除该用户？</p>
        </Modal>
      </div>
    )
  }
}
export default User