import React, { Component } from 'react'
import {Helmet} from 'react-helmet';
import {Button, Form} from 'antd';
import {LockOutlined, UserOutlined} from '@ant-design/icons';
import style from './style.less';

class Login extends Component {
  state = {
    isMount:false,
  }
  render() {
    const FormItemClass = [style.FormItem, {[style.active]: this.state.isMount}];
    return (
      <div>
         <Helmet title="欢迎登录" />
         <div className={style.box}>
            <Form name="login">
              <div className={Form.ItemClass}>
                  <h1 className={style.header}>欢迎登录</h1>
              </div>
              <div className={Form.ItemClass}>
                    <Form.Item
                        name="account"
                        allowClear
                        autoFocus
                        prefix={<UserOutlined />}
                        placeholder="请输入用户名"
                        rules={[{required: true, message: '请输入用户名！'}]}
                    />
                </div>
                <div className={FormItemClass}>
                    <Form.Item
                        type="password"
                        name="password"
                        prefix={<LockOutlined />}
                        placeholder="请输入密码"
                        rules={[{required: true, message: '请输入密码！'}]}
                    />
                </div>
                <div className={Form.ItemClass}>
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