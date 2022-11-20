import React, { Component } from 'react'
import { Space, Table, Tag,Spin, Input,Button,Modal,message,Form } from 'antd';
import UserApi from '../../serviceModel/user.js';
import style from './style.less';

class UserView extends Component {
  constructor(props) {
    super(props);
  }
  state = {
    isViewModalOpen:this.props.open,
    initialValues:this.props.user,
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
        initialValues:nextProps.user,
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
      <Modal title="查看用户" cancelText="取消"  okText="确认"  open={isViewModalOpen} onOk={this.handleViewOK.bind(this)} onCancel={this.handleViewCancel.bind(this)}>
        <Form name="view"  initialValues={initialValues} onFinish={this.onFinish.bind(this)}>
              <div className={FormItemClass}>
                  <Form.Item
                    name="username"
                    label="用户名"
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
            </Form>
      </Modal>
    )
  }
}
export default UserView