import React, { Component } from 'react'
import { Space, Table, Tag,Spin, Input,Button,Modal,message,Form } from 'antd';
import NewsApi from '../../serviceModel/news.js';
import style from './style.less';
import tools from '../../utils/tools';

class NewsView extends Component {
  constructor(props) {
    super(props);
  }
  state = {
    isViewModalOpen:this.props.open,
    initialValues:this.props.news,
  }

  onFinish = async (values) =>{
    this.props.onOk();
  }


  componentWillMount() {

  }


  componentWillReceiveProps(nextProps){
    if(nextProps.open !== this.state.isViewModalOpen){
      this.setState({
        isViewModalOpen:nextProps.open,
        initialValues:nextProps.news,
      })
    }
  }


  handleViewOK(){
    this.props.onOK();
  }

  handleViewCancel(){
    this.props.onCancel();
  }

  render() {
    let {isViewModalOpen,initialValues} = this.state;
    console.log('initialValues',initialValues)
    const FormItemClass = [style.formItem];

    return (
      initialValues && <Modal title="查看新闻"  height={500} width={1000} cancelText="取消"  okText="确认"  open={isViewModalOpen} onOk={this.handleViewOK.bind(this)} onCancel={this.handleViewCancel.bind(this)}>
        {/* <Form name="view"  initialValues={initialValues} onFinish={this.onFinish.bind(this)}>
              <div className={FormItemClass}>
                  <Form.Item
                    name="newsname"
                    label="新闻名"
                    labelCol={{span: 6}}
                    labelAlign="left"
                  >
                    <Input />
                  </Form.Item>
              </div>
              <div className={FormItemClass}>
                  <Form.Item
                    name="telephone"
                    label="手机号码"
                    labelCol={{span: 6}}
                    labelAlign="left"
                  >
                    <Input />
                  </Form.Item>
              </div>
              <div className={FormItemClass}>
                  <Form.Item
                    name="password"
                    label="密码"
                    labelCol={{span: 6}}
                    labelAlign="left"
                  >
                    <Input />
                  </Form.Item>
              </div>
            </Form> */}
              <div className={style.title} id="title">{initialValues.title}</div>
              <div className={style.brife}>
                  <img className={style.authorAvatar} src={initialValues.thumbnail} alt=""/>
                  <span className={style.authorName}>{initialValues.nickname}</span>
                  <span className={style.line}>|</span>
                  <span className={style.date}>{tools.formatDate(initialValues.createTime)}</span>
                  <span className={style.line}>|</span>
                  <span className={style.readText}>阅读</span>
                  <span className={style.count} >喜欢：{initialValues.likeNum}</span>
                  <span className={style.count} > 不喜欢：{initialValues.unlikeNum}</span>
              </div>
            <div className={style.contentWrapper} dangerouslySetInnerHTML={{__html:initialValues.content}}></div>

      </Modal>
    )
  }
}
export default NewsView