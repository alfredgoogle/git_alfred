import React, { Component } from 'react'
import { Space, Table, Tag,Spin, Input,Button,Modal,message,Form } from 'antd';
import ChannelApi from '../../serviceModel/channel.js';
import style from './style.less';

class ChannelView extends Component {
  constructor(props) {
    super(props);
  }
  state = {
    isViewModalOpen:this.props.open,
    initialValues:this.props.channel,
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
        initialValues:nextProps.channel,
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
      <Modal title="查看频道" cancelText="取消"  okText="确认"  open={isViewModalOpen} onOk={this.handleViewOK.bind(this)} onCancel={this.handleViewCancel.bind(this)}>
        <Form name="view"  initialValues={initialValues} onFinish={this.onFinish.bind(this)}>
              <div className={FormItemClass}>
                  <Form.Item
                    name="channelId"
                    label="频道id"
                    labelCol={{span: 6}}
                    labelAlign="left"
                  >
                    <Input />
                  </Form.Item>
              </div>
              <div className={FormItemClass}>
                  <Form.Item
                    name="channelName"
                    label="频道名"
                    labelCol={{span: 6}}
                    labelAlign="left"
                  >
                    <Input />
                  </Form.Item>
              </div>
          </Form>
      </Modal>
    )
  }
}
export default ChannelView