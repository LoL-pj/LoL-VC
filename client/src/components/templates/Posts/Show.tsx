import React from 'react'
 
import Post, { PostProps } from '../../organisms/Post'
 
export interface PostTemplateProps {
  post: PostProps
}
 
const PostsTemplate: React.FC<PostTemplateProps> = ({post}) => {
  return(
    <div>
      <Post {...post} />
    </div>
  )
}
 
export default PostsTemplate