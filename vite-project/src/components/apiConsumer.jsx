// eslint-disable-next-line no-unused-vars
import React, { useEffect, useState } from 'react';
import axios from 'axios';

const ApiConsumer = () => {
  const [post, setPost]= React.useState(null);
  React.useEffect(()=>{
    axios.get('http://localhost:3000/tester').then(
      (response)=>{
        setPost(response.data)
      }
    )
  }, [])

  if (!post) return null;
  return(
    <div>
      <h1>{post}</h1>
    </div>
  )


};


export default ApiConsumer;