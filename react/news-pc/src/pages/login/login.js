import React, { Component } from 'react'
import {Helmet} from 'react-helmet';
import {Button, Form,Input} from 'antd';
import {LockOutlined, UserOutlined} from '@ant-design/icons';
import style from './style.less';

class Login extends Component {
  state = {
    isMount:false,
  }
  render() {
    const FormItemClass = [style.formItem];
    return (
      <div className={style.root}>
         <Helmet title="欢迎登录" />
         <div className={style.box}>
            <Form name="login">
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
                                    登录
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