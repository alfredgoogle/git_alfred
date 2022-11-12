import React, { Component } from 'react'
import { HashRouter, Switch, Route } from 'react-router-dom'
import Login from '../pages/login/login'
import Layout from '../layout'


export default class RouteConfig extends Component {

  render() {
    return (
      <HashRouter>
          <Route path="/login" exact component={Login}/>
          <Route path="/web" component={Layout}/>
      </HashRouter>
    )
  }
}