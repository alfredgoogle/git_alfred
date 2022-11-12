import React, { Component } from 'react'
import { HashRouter, Switch, Route } from 'react-router-dom'
import menus from '../router/menu';
import style from './style.less';
import { Button, Menu } from 'antd';

class Layout1 extends Component {

    state = {
        defaultSelectedKey: ''
      }


    componentWillMount() {
        let path  =this.props.location.pathname;
        let index = menus.findIndex(menu=>menu.path == path);
        if(~index){
            this.setState({
                defaultSelectedKey:menus[index].path
            })
        }
    }
    onClickMenu = (val)=>{
        console.log('val',val)
        let path = val.key;
        this.props.history.push(path);
    }
    render() {
        console.log('children',this.props.children)
        let items = menus.map(menu=>{
            return {
                key:menu.path,
                label:menu.name,
            }
        })
        return (
            <div className={style.container}>
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
                            <div ></div>
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