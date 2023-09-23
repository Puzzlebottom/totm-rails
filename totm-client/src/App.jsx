import axios from 'axios';
import { useState } from 'react';
import './styles/App.css';

function App() {
  const initialState = { username: '', password: '', password_confirmation: '' };
  const [state, setState] = useState(initialState);

  const handleSubmit = (e) => {
    e.preventDefault();
    axios.post('http://localhost:3000/users', { user: state })
      .then(res => {
        console.log(res);
        setState(initialState);
      })
      .catch(err => console.log(err));
  };

  const handleChange = (e) => {
    setState({ ...state, [e.target.name]: e.target.value });
  };

  return (
    <form onSubmit={handleSubmit}>
      <input type='text' name={'username'} placeholder={'Enter Username'} value={state.username} onChange={handleChange} />
      <input type='password' name={'password'} placeholder={'Enter Password'} value={state.password} onChange={handleChange} />
      <input type='password' name={'password_confirmation'} placeholder={'Confirm Password'} value={state.password_confirmation} onChange={handleChange} />
      <button type='submit'>SUBMIT</button>
    </form>
  );
}

export default App;
