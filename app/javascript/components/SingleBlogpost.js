import React from "react"

import withFetching from './utils/withFetching'
import BlogpostDisplay from './BlogpostDisplay'

const API = '/api/v1/blogposts/'
const DEFAULT_QUERY = ''

const SingleBlogPost = ({ data, isLoading, error }) => {
  if (!data) {
    return <p>No data yet</p>;
  }
  
  if (error) {
    return <p>{error.message}</p>;
  }

  if (isLoading) {
    return <p>Loading...</p>;
  }

  return (
    <BlogpostDisplay data={data} />
  );
}

export default withFetching(API + DEFAULT_QUERY)(SingleBlogPost)
