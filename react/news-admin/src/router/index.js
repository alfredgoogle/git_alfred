import React, { Component } from 'react'
import { HashRouter, Switch, Route, Redirect } from 'react-router-dom'
import Login from '../pages/login'
// import Register from '../pages/register'


export default class RouteConfig extends Component {

  render() {
    return (
      <HashRouter>
          <Switch>
            <Route path="/login" exact component={Login}/>
            {/* <Route path="/register" exact component={Register}/> */}
          </Switch>
      </HashRouter>
    )
  }
}