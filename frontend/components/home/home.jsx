import React from 'react';
import { Link } from 'react-router-dom';

const Homepage = ({ currentUser, logout }) => {
  const sessionLinks = () => (
    <div>
      <nav className="homepage-buttons">
        <Link to="/">TWICIFY</Link>
        <div className="homepage-signup-login-buttons">
          <Link className="homepage-signup-button" to="/signup">Sign up </Link>
          <Link className="homepage-login-button" to="/login">Log in</Link>
        </div>
      </nav>
      <h1 class="homepage-header">TWICIFY</h1>
    </div>
  );
  
  const personalGreeting = () => (
    <hgroup className="header-group">
      <button className="header-button" onClick={logout}>Log Out</button>
    </hgroup>
  );

  return currentUser ? personalGreeting() : sessionLinks();
};


export default Homepage;