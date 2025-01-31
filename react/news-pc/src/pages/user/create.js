import React, { Component } from 'react'
import { Space, Table, Tag,Spin, Input,Button,Modal,message,Form } from 'antd';
import UserApi from '../../serviceModel/user.js';
import style from './style.less';

class UserCreate extends Component {
  constructor(props) {
    super(props);
    this.submitRef = React.createRef();

  }
  state = {
    isCreateModalOpen:this.props.open
  }

  onFinish = async (values) =>{
    console.log('values',values);
    let {password,telephone,username} = values;
    let res = await UserApi.addUserDetail({
      password,
      telephone,
      username,
      salt:'123456'
    });

    if(res && res.data){
      console.log('res',res);
      message.success('添加用户成功');
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
      <Modal title="添加新用户" cancelText="取消"  okText="确认"  open={isCreateModalOpen} onOk={this.handleCreateOK.bind(this)} onCancel={this.handleCreateCancel.bind(this)}>
        <Form name="create"  onFinish={this.onFinish.bind(this)}>
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
export default UserCreate