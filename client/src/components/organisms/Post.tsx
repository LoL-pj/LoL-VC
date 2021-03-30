import React from 'react'
 
export interface PostProps {
  title: string
  body: string
}
 
const Post: React.FC<PostProps> = ({title, body}) => {
  return(
    <div>
      <h1>{title}</h1>
      <div>{body}</div>
    </div>
  )
}
 
export default Post