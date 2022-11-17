import React, { Component } from 'react'
import {Helmet} from 'react-helmet';
import {Button, Form,Input, Space, message} from 'antd';
import style from './style.less';
import LoginApi from '../../serviceModel/login.js';

class Login extends Component {
  state = {
    isMount:false,
  }

  onFinish = async (values) =>{
    console.log('values',values);
    let {password,telephone,username} = values;
    let res = await LoginApi.register({
      password,
      telephone,
      username,
    });

    if(res){
      console.log('res',res);
      message.success('注册成功');

      this.props.history.push('/login');
    }


  }

  render() {
    const FormItemClass = [style.formItem];
    return (
      <div className={style.root}>
         <Helmet title="欢迎注册" />
         <div className={style.box}>
            <Form name="login"  onFinish={this.onFinish.bind(this)}>
              <div className={FormItemClass}>
                  <h1 className={style.header}>欢迎注册</h1>
              </div>
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
                    <Input.Password />
                  </Form.Item>
              </div>
              {/* <div className={FormItemClass}>
                  <Form.Item
                    name="captcha"
                    labelAlign="left"
                    rules={[{ required: true, message: '' }]}
                  >
                    <Space>
                      <Input span="" />
                      <Button type="primary" htmlType="button" >获取验证码</Button>
                    </Space>
                  </Form.Item>
               
              </div> */}
              <div className={FormItemClass}>
                  <Form.Item noStyle shouldUpdate style={{marginBottom: 0}}>
                      {() => (
                          <Button
                              className={style.submitBtn}
                              type="primary"
                              htmlType="submit"
                          >
                              注册
                          </Button>
                      )}
                  </Form.Item>
              </div>
            </Form>
         </div>
      </div>
    )
  }
}
export default Login;