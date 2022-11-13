import React, { Component } from 'react'
import { HashRouter, Switch, Route, Redirect } from 'react-router-dom'
import Login from '../pages/login/login'
import Register from '../pages/register'
import Layout from '../layout'


export default class RouteConfig extends Component {

  render() {
    return (
      <HashRouter>
          {/* <Switch> */}
            <Route path="/login" exact component={Login}/>
            <Route path="/register" exact component={Register}/>
            <Route path="/web" component={Layout}/>
            <Redirect from="/web" to="/web/user" />
          {/* </Switch> */}
      </HashRouter>
    )
  }
}