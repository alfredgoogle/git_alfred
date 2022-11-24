

import React, { Component } from 'react'
import { Space, Table, Tag,Spin, Button, Modal,message } from 'antd';
import NewsApi from '../../serviceModel/news.js';
import tools from '../../utils/tools';

import NewsDetailModel from './detail';
class News extends Component {
  state = {
    isLoading: false,
    data:[],
    columns:[
      {
        title: '文章名称',
        dataIndex: 'title',
        key: 'title',
      },
      {
        title: '作者',
        dataIndex: 'nickname',
        key: 'nickname',
      },
      {
        title: '创建时间',
        dataIndex: 'createTime',
        key: 'createTime',
        render: (text) => tools.formatDate(text) 
      },
      {
        title: 'Action',
        key: 'action',
        render: (_, record) => (
          <Space size="middle">
            <a onClick={this.onViewDetail.bind(this,record)}>详情</a>
          </Space>
        ),
      },
    ],
    isViewModalOpen:false,
    viewNews:null,
    initialViewNews:null,
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
    console.log('record',record);
    this.setState({
      isViewModalOpen:true,
      initialViewNews:{...record}
    })

  }

  //加载新闻数据
  async loadData(pageNum){
    this.setState({
      isLoading:true
    })
    let res = await NewsApi.listByTags({
      "pageNum":pageNum || 1,
      "pageSize":10,
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



  // 确认查看新闻
  onConfirmViewNews(){
    this.setState({
      isViewModalOpen:false
    })
  }

  // 取消查看新闻
  onCancelViewNews(){
    this.setState({
      isViewModalOpen:false
    })
  }

  render() {
    let {data,columns,isLoading,page,isViewModalOpen,initialViewNews} = this.state;
    console.log('data',data)
    return (
      isLoading ? <Spin></Spin> :
      <div>
        <Table columns={columns} dataSource={data} pagination={page}/>
        <NewsDetailModel open={isViewModalOpen} news={initialViewNews} onOk={this.onConfirmViewNews.bind(this)} onCancel={this.onCancelViewNews.bind(this)}></NewsDetailModel>
      </div>
    )
  }
}
export default News