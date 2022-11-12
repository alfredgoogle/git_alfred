import React, { Component } from 'react'
import { HashRouter, Switch, Route } from 'react-router-dom'
import asyncComponent from '../utils/asyncComponent.js'
import home from '../pages/home'
import Login from '../pages/login/login'
const record = asyncComponent(() => import('../pages/record'))
export default class RouteConfig extends Component {
  render() {
    return (
      <HashRouter>
        <Switch>
          <Route path="/" exact component={home}/>
          <Route path="/login" exact component={Login}/>
          <Route path="/home" exact component={home}/>
          <Route path="/record" component={record}/>
        </Switch>
      </HashRouter>
    )
  }
}