import axios from 'axios';
import { useState } from 'react';
import NavBar from './components/NavBar';
import Authorization from './components/Authorization';

function App() {
  return (
    <>
      <NavBar />
      <Authorization />
    </>
  );
}

export default App;
