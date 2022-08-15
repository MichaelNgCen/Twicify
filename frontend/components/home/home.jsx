import React from 'react';
import { Link } from 'react-router-dom';
// import myImage from '../../assets/images/myImage.png';

const Homepage = ({ currentUser, logout }) => {
  const sessionLinks = () => (
    <div id='nav'>
      <nav className="homepage-buttons">
      <nav className="logo">
      <Link to="/">
            <img id="splash-nav-logo" src="https://i.postimg.cc/90ZXdwyq/homepage-photo.png" alt="splash-logo" />
          </Link>
      </nav>
        <div className="homepage-signup-login-buttons">
            <li id="github-splash" className="splash-link"><a href="https://github.com/MichaelNgCen/Twicify" target="_blank">GitHub</a></li>
            <li id="linkedin-splash" className="splash-link"><a href="https://www.linkedin.com/in/michaelngcen/" target="_blank">LinkedIn</a></li>
            <li className="splash-link-break"><span> | </span></li>
          <Link className="homepage-signup-button" to="/signup">Sign up </Link>
          <Link className="homepage-login-button" to="/login">Log in</Link>
        </div>
      </nav>
      {/* <h1 class="homepage-header">TWICIFY</h1> */}
      <div className="tagline">
          <h2 id="Tagline" > Music is everything</h2>
        </div>
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