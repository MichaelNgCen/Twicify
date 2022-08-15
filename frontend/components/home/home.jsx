import React from 'react';
import { Link } from 'react-router-dom';

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
        <footer id="splash-footer">
          {/* <Link to="/">
          <img id="splash-nav-logo" src="https://i.postimg.cc/90ZXdwyq/homepage-photo.png" alt="splash-logo" />
          </Link> */}
          <div id="tech-stack-list">
            <p id="tech-stack-title">TECH STACK</p>
            <ul id="tech-stack">
              <li>HTML 5</li>
              <li>CSS 3</li>
              <li>JavaScript</li>
              <li>React</li>
              <li>Redux</li>
              <li>Rails</li>
              <li>PostgreSQL</li>
            </ul>
          </div>
        </footer>

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