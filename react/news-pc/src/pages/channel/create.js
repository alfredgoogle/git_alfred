import React, { Component } from 'react'
import { Space, Table, Tag,Spin, Input,Button,Modal,message,Form } from 'antd';
import ChannelApi from '../../serviceModel/channel.js';
import style from './style.less';

class ChannelCreate extends Component {
  constructor(props) {
    super(props);
    this.submitRef = React.createRef();

  }
  state = {
    isCreateModalOpen:this.props.open
  }

  onFinish = async (values) =>{
    console.log('values',values);
    let {channelId,channelName} = values;
    let res = await ChannelApi.addChannelDetail({
      channelId,
      channelName,
    });

    if(res && res.data){
      console.log('res',res);
      message.success('添加频道成功');
      this.props.onOk();
    }
  }


  componentWillMount() {

  }


  componentWillReceiveProps(nextProps){
    if(nextProps.open !== this.state.isCreateModalOpen){
      this.setState({
        isCreateModalOpen:nextProps.open
      })
    }
  }


  handleCreateOK(){
    this.submitRef.current.click();
  }

  handleCreateCancel(){
    // this.setState({
    //   isCreateModalOpen:false
    // })
    this.props.onCancel();
  }

  render() {
    let {isCreateModalOpen} = this.state;
    const FormItemClass = [style.formItem];

    return (
      <Modal title="添加新频道" cancelText="取消"  okText="确认"  open={isCreateModalOpen} onOk={this.handleCreateOK.bind(this)} onCancel={this.handleCreateCancel.bind(this)}>
        <Form name="create"  onFinish={this.onFinish.bind(this)}>
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
export default ChannelCreate