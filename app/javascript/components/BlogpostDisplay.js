import React from "react"

const BlogpostDisplay = ({ data }) => {
  if (!data) {
    return <p>No data yet</p>;
  }

  return (
    <div className="item mb-5">
      <div className="media">
        <img 
          className="mr-3 img-fluid post-thumb d-none d-md-flex"
          alt="image"
          src={data.img}
        />
        <div className="media-body">
          <h3 className="title mb-1">
            <a href={"test"}>
              {data.title}
            </a>
          </h3>
          <div className="meta mb-1">
            <span className="date">
              {data.published_date}
            </span>
            <span className="time">
              {data.read_time}
            </span>
            <span className="comment">
              <a href="#">
                {data.comments}
              </a>
            </span>
          </div>
          <div className="intro">
            {data.excerpt}
          </div>
          <a className="more-link" href="#">
            Read more
          </a>
        </div>
      </div>
    </div>
  )
}

export default BlogpostDisplay
