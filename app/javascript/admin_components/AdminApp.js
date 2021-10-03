import React from "react"
import PropTypes from "prop-types"
import { BrowserRouter, Switch, Route } from 'react-router-dom'

class AdminApp extends React.Component {
  render () {
    return (
      <React.Fragment>
        <NavBar />
        <BrowserRouter>
          <Switch>
            <Route exact path='/' render={() => <Dashboard />} />
          </Switch>
        </BrowserRouter>
      </React.Fragment>
    );
  }
}

export default AdminApp
