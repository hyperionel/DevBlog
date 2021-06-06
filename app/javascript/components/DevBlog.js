import React from "react"
import PropTypes from "prop-types"
import { BrowserRouter, Switch, Route } from 'react-router-dom'

import BlogpostList from './BlogpostList'
import SingleBlogpost from "./SingleBlogpost"

class DevBlog extends React.Component {
  render () {
    return (
      <BrowserRouter>
        <Switch>
          <Route exact path='/' render={() => <BlogpostList />} />
          <Route path='posts/:slug' render={() => <SingleBlogpost/>} />
        </Switch>
      </BrowserRouter>
    );
  }
}

export default DevBlog
