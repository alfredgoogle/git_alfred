import React, { Component } from 'react'
import {Helmet} from 'react-helmet';
import {Button, Form,Input} from 'antd';
import style from './style.less';
import LoginApi from '../../serviceModel/login.js';

class Login extends Component {
  state = {
    isMount:false,
  }

  onFinish = (values) =>{
    console.log('values',values);
    // LoginApi.login();
    this.props.history.push('/web/user');

  }

  render() {
    const FormItemClass = [style.formItem];
    return (
      <div className={style.root}>
         <Helmet title="欢迎注册" />
         <div className={style.box}>
            <Form name="login"  onFinish={this.onFinish.bind(this)}>
              <div className={FormItemClass}>
                  <h1 className={style.header}>欢迎登录</h1>
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
                    name="password"
                    label="密码"
                    labelCol={{span: 6}}
                    labelAlign="left"
                    rules={[{ required: true, message: '请输入密码' }]}
                  >
                    <Input.Password />
                  </Form.Item>
                </div>
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