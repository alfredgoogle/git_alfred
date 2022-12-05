import React, { Component } from 'react'
import {Helmet} from 'react-helmet';
import {Button, Form,Input,message} from 'antd';
import LoginApi from '../../serviceModel/login.js';
import style from './style.less';

class Login extends Component {
  state = {
    isMount:false,
  }

  onFinish = async (values) =>{
    console.log('values',values);
    let {captcha,password,telephone} = values;
    let res = await LoginApi.login({
      captcha,
      password,
      telephone,
      // username,
    });
    debugger;


    if(res && res.data){
      console.log('res',res);
      sessionStorage.setItem('userInfo',JSON.stringify(res.data));
      message.success('登录成功');

      this.props.history.push('/web/user');
    }else if(res && res.error){
      message.error(res.error.message);
    }else{
      message.error('登录失败');

    }


  }



  render() {
    const FormItemClass = [style.formItem];
    console.log('login')
    return (
      <div className={style.root}>
         <Helmet title="欢迎登录" />
         <div className={style.box}>
            <Form name="login"  onFinish={this.onFinish.bind(this)}>
              <div className={FormItemClass}>
                  <h1 className={style.header}>欢迎登录</h1>
              </div>
              {/* <div className={FormItemClass}>
                  <Form.Item
                    name="username"
                    label="用户名"
                    labelCol={{span: 6}}
                    labelAlign="left"
                    rules={[{ required: true, message: '请输入用户名' }]}
                  >
                    <Input />
                  </Form.Item>
              </div> */}
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