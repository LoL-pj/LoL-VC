import React from 'react'
 
import Post, { PostProps } from '../../organisms/Post'
 
export interface PostsTemplateProps {
  posts: PostProps[]
}
 
const PostsTemplate: React.FC<PostsTemplateProps> = ({posts}) => {
  return(
    <div>
      {posts.map(post => (
        <Post {...post} />
      ))}
    </div>
  )
}
 
export default PostsTemplate