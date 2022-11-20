import React, { Component } from 'react'
import { HashRouter, Switch, Route } from 'react-router-dom'
import menus from '../router/menu';
import style from './style.less';
import { Button, Menu,Avatar,Dropdown,Space,message } from 'antd';
import { DownOutlined, SmileOutlined,LogoutOutlined } from '@ant-design/icons';

class Layout1 extends Component {

    state = {
        defaultSelectedKey: '',
        userInfo:{},
      }


    componentWillMount() {
        //路由信息加载
        let path  =this.props.location.pathname;
        let index = menus.findIndex(menu=>menu.path == path);
        if(~index){
            this.setState({
                defaultSelectedKey:menus[index].path
            })
        }


        //员工信息加载
        
        let userInfo = sessionStorage.getItem('userInfo') && JSON.parse(sessionStorage.getItem('userInfo'));
        if(userInfo){
            this.setState({userInfo});
        }else{
            message.error('用户不存在');
            this.props.history.push('/login');
        }
    }
    onClickMenu = (val)=>{
        console.log('val',val)
        let path = val.key;
        this.props.history.push(path);
    }

    //退出登录
    handleLogout = (val)=>{
        sessionStorage.removeItem('userInfo');
        message.success('退出成功');
        this.props.history.push('/login');
        console.log('退出登录')
    }
    render() {
        console.log('children',this.props.children)
        let items = menus.map(menu=>{
            return {
                key:menu.path,
                label:menu.name,
            }
        })
        let {userInfo} = this.state;
        let dropMenu = (
            <Menu>
            <Menu.Item key="logout" danger icon={<LogoutOutlined />} onClick={this.handleLogout}>
                退出登录
            </Menu.Item>
        </Menu>
        )
        return (
            userInfo.username && <div className={style.container}>
                <div className={style.containerLeft}>
                    <div className={style.containerTitle}>新闻系统</div>
                {
                    <Menu
                        mode="inline"
                        theme="dark"
                        onClick={this.onClickMenu.bind(this)} 
                        items={items}
                        defaultSelectedKeys={[this.state.defaultSelectedKey || items[0].key]}
                />
                }
                </div>
                <div className={style.containerRight}>
                    <div className={style.containerHeader}>
                        <div className={style.containerHeaderLeft}></div>
                        <div className={style.containerHeaderRight}>
                        <Dropdown menu={dropMenu}>
                            <a onClick={e => e.preventDefault()}>
                            <Space>
                                <div className={style.containerUserInfo}>
                                    <Avatar size={40}>{userInfo.username.slice(0,1)}</Avatar>
                                    <div className={style.containerUserName}>
                                        {userInfo.username}
                                    </div>
                                    <DownOutlined/>
                                </div>
                            </Space>
                            </a>
                        </Dropdown>
                          
                        </div>
                    </div>
                    <div className={style.containerContent}>
                        {
                            menus.map((menu,index)=>{
                            return ( <Route key={index} path={menu.path}  component={menu.component}/>)
                            })
                        }
                    </div>

            
                </div>
            </div> 
        )
    }
}
export default Layout1;