import React from "react"

import withFetching from './utils/withFetching'
import BlogpostDisplay from './BlogpostDisplay'

const API = '/api/v1/blogposts'
const DEFAULT_QUERY = ''

const BlogpostList = ({ data, isLoading, error }) => {

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
    <section className="blog-list px-3 py-5 p-md-5">
      <div className="container">
        {blogposts.map( blogpost =>
          <BlogpostDisplay data={blogpost} />
        )}
      </div>
    </section>
  );
}

export default withFetching(API + DEFAULT_QUERY)(BlogpostList)
