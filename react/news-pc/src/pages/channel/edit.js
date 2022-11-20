import React, { Component } from 'react'
import { Space, Table, Tag,Spin, Input,Button,Modal,message,Form } from 'antd';
import ChannelApi from '../../serviceModel/channel.js';
import style from './style.less';

class ChannelEdit extends Component {
  constructor(props) {
    super(props);
    this.submitRef = React.createRef();
  }
  state = {
    isEditModalOpen:this.props.open,
    initialValues:this.props.channel,
  }

  onFinish = async (values) =>{
    console.log('values',values);
    let {channelId,channelName} = values;
    let res = await ChannelApi.editChannelDetail({
      ...this.state.initialValues,
      channelId,
      channelName,
    });

    if(res && res.data){
      console.log('res',res);
      message.success('修改频道成功');
      this.props.onOk();
    }
  }


  componentWillMount() {

  }


  componentWillReceiveProps(nextProps){
    if(nextProps.open !== this.state.isEditModalOpen){
      this.setState({
        isEditModalOpen:nextProps.open,
        initialValues:nextProps.channel,
      })
    }
  }


  handleEditOK(){
    this.submitRef.current.click();
  }

  handleEditCancel(){
    this.props.onCancel();
  }

  render() {
    let {isEditModalOpen,initialValues} = this.state;
    console.log('initialValues',initialValues)
    const FormItemClass = [style.formItem];

    return (
      <Modal title="修改频道" cancelText="取消"  okText="确认"  open={isEditModalOpen} onOk={this.handleEditOK.bind(this)} onCancel={this.handleEditCancel.bind(this)}>
        <Form name="edit"  initialValues={initialValues} onFinish={this.onFinish.bind(this)}>
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
                    rules={[{ required: true, message: '请输入频道名' }]}
                  >
                    <Input />
                  </Form.Item>
              </div>
              <div className={FormItemClass}>
                <Button
                    ref={this.submitRef} 
                    className={style.submitBtn}
                    type="primary"
                    htmlType="submit"
                >
                </Button>
              </div>
          
            </Form>
      </Modal>
    )
  }
}
export default ChannelEdit