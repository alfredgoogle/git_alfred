import React, { Component } from 'react'
import { Space, Table, Tag,Spin, Input,Button,Modal,message,Form } from 'antd';
import UserApi from '../../serviceModel/user.js';
import style from './style.less';

class UserEdit extends Component {
  constructor(props) {
    super(props);
    this.submitRef = React.createRef();
  }
  state = {
    isEditModalOpen:this.props.open,
    initialValues:this.props.user,
  }

  onFinish = async (values) =>{
    console.log('values',values);
    let {password,telephone,username} = values;
    let res = await UserApi.editUserDetail({
      ...this.state.initialValues,
      password,
      telephone,
      username,
    });

    if(res && res.data){
      console.log('res',res);
      message.success('修改用户成功');
      this.props.onOk();
    }
  }


  componentWillMount() {

  }


  componentWillReceiveProps(nextProps){
    if(nextProps.open !== this.state.isEditModalOpen){
      this.setState({
        isEditModalOpen:nextProps.open,
        initialValues:nextProps.user,
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
      <Modal title="修改用户" cancelText="取消"  okText="确认"  open={isEditModalOpen} onOk={this.handleEditOK.bind(this)} onCancel={this.handleEditCancel.bind(this)}>
        <Form name="edit"  initialValues={initialValues} onFinish={this.onFinish.bind(this)}>
              <div className={FormItemClass}>
                  <Form.Item
                    name="username"
                    label="用户名"
                    labelCol={{span: 6}}
                    labelAlign="left"
                    rules={[{ required: true, message: '请输入用户名' }]}
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
                    rules={[{ required: true, message: '请输入手机号码' }]}
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
                    rules={[{ required: true, message: '请输入密码' }]}
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
export default UserEdit