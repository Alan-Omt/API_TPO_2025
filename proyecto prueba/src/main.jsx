// src/main.jsx

import React from 'react';
import ReactDOM from 'react-dom/client';
import MyProfile from './pages/myProfile';
import Prod2 from './pages/gstprod2';
import Products from './pages/products'; 
import Prueba from './pages/prueba'; 
// import { StrictMode } from "react";
import { createRoot } from "react-dom/client";
import "./index.css";


const root = ReactDOM.createRoot(document.getElementById('root'));

root.render(

  <React.StrictMode>

     {/* <MyProfile /> */}
    <Prod2 /> 
    {/* <Products /> 
    <Prueba /> */}



  </React.StrictMode>

);
