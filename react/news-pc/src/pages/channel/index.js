import React, { Component } from 'react'
import { Space, Table, Tag,Spin, Button, Modal,message } from 'antd';
import ChannelApi from '../../serviceModel/channel.js';

import ChannelCreateModel from './create';
import ChannelEditModel from './edit';
import ChannelDetailModel from './detail';
class Channel extends Component {
  state = {
    isLoading: false,
    data:[],
    columns:[
      {
        title: '频道id',
        dataIndex: 'channelId',
        key: 'channelId',
      },
      {
        title: '频道名',
        dataIndex: 'channelName',
        key: 'channelName',
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
    isCreateModalOpen:false,
    isEditModalOpen:false,
    isViewModalOpen:false,
    viewChannel:null,
    initialEditChannel:null,
    initialViewChannel:null,
  }
  componentWillMount() {
    this.loadData();
  }




  //查看详情
  onViewDetail( record, event){
    console.log('record',record);
    this.setState({
      isViewModalOpen:true,
      initialViewChannel:{...record}
    })

  }

  onDelete(record){
    console.log('record',record)
    this.setState({
      isDeleteModalOpen:true,
      viewChannel:{...record}
    })
  }

  onCreate(){

    this.setState({
      isCreateModalOpen:true
    })
  }

  onEdit(record){
    this.setState({
      isEditModalOpen:true,
      initialEditChannel:{...record}
    })
  }
  

  //取消删除
  handleDeleteCancel(){
    this.setState({
      isDeleteModalOpen:false
    })
  }

  //确认删除
  async handleDeleteOk(){
    let channel = this.state.viewChannel;
    let res = await ChannelApi.channelDelete(channel.id);
    if(res.data){
      message.success('删除成功');
      this.setState({
        isDeleteModalOpen:false
      })
      this.loadData(1);
    }
  }

  //加载频道数据
  async loadData(){
    this.setState({
      isLoading:true
    })
    let res = await ChannelApi.channelList()
    debugger;
    if(res.data){
      res.data = res.data.map(record => {
        record.key  = record.id;
        return record;
      })
      // page.defaultPageSize=10;
      this.setState({
        data:res.data,
        isLoading:false
      })
    }
  }


  // 确认添加新频道
  onConfirmCreateChannel(){
    this.setState({
      isCreateModalOpen:false
    })
  }

  // 取消添加新频道
  onCancelCreateChannel(){
    this.setState({
      isCreateModalOpen:false
    })
  }


  // 确认编辑频道
  onConfirmEditChannel(){
    this.setState({
      isEditModalOpen:false
    })
  }

  // 取消编辑频道
  onCancelEditChannel(){
    this.setState({
      isEditModalOpen:false
    })
  }


  // 确认查看频道
  onConfirmViewChannel(){
    this.setState({
      isViewModalOpen:false
    })
  }

  // 取消查看频道
  onCancelViewChannel(){
    this.setState({
      isViewModalOpen:false
    })
  }

  render() {
    let {data,columns,isLoading,page,isDeleteModalOpen,isCreateModalOpen,isEditModalOpen,isViewModalOpen,initialEditChannel,initialViewChannel} = this.state;
    console.log('data',data)
    return (
      isLoading ? <Spin></Spin> :
      <div>
        <Button type="primary" onClick={this.onCreate.bind(this)}>新建</Button>
        <Table columns={columns} dataSource={data} pagination={page}/>
        <Modal title="删除频道" cancelText="取消"  okText="确认"  open={isDeleteModalOpen} onOk={this.handleDeleteOk.bind(this)} onCancel={this.handleDeleteCancel.bind(this)}>
        <p>是否确认删除该频道？</p>
        </Modal>
        <ChannelCreateModel open={isCreateModalOpen} onOk={this.onConfirmCreateChannel.bind(this)} onCancel={this.onCancelCreateChannel.bind(this)}></ChannelCreateModel>
        <ChannelEditModel open={isEditModalOpen} channel={initialEditChannel} onOk={this.onConfirmEditChannel.bind(this)} onCancel={this.onCancelEditChannel.bind(this)}></ChannelEditModel>
        <ChannelDetailModel open={isViewModalOpen} channel={initialViewChannel} onOk={this.onConfirmViewChannel.bind(this)} onCancel={this.onCancelViewChannel.bind(this)}></ChannelDetailModel>
      </div>
    )
  }
}
export default Channel