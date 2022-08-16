import React from 'react';
import { Link } from 'react-router-dom'
import { withRouter } from 'react-router-dom';

const Splash = ({ currentUser, login, history }) => {
  const splashContent = () => {

    const handleDemo = (e) => {
      e.preventDefault();
      const demo = {
        username: "Demo User",
        password: "demopassword123"
      }
      login(demo)
        .then(() => history.push('/'));
    }

    return (
      <div className="splash-container">
        <nav className="splash-nav">
        <Link to="/">
            <img id="splash-nav-logo" src="https://i.postimg.cc/90ZXdwyq/homepage-photo.png" alt="splash-logo" />
          </Link>
          <ul className="splash-links-list">
            <li id="github-splash" className="splash-link"><a href="https://github.com/MichaelNgCen/Twicify" target="_blank">GitHub</a></li>
            <li id="linkedin-splash" className="splash-link"><a href="https://www.linkedin.com/in/michaelngcen/" target="_blank">LinkedIn</a></li>
            <li className="splash-link-break"><span> | </span></li>
            <li className="splash-link"><Link to="/signup">Sign up</Link></li>
            <li className="splash-link"><Link to="/login">Log in</Link></li>
          </ul>
        </nav>

        <main id="splash">
          <div id="tagline">
            <h1 id="tagline-1">Music is</h1>
            <h1 id="tagline-2">everything</h1>
          </div>

          <h4 id="sub-tagline">
            Couple of songs. No credit card needed.
          </h4>
          
          <button
            id="splash-demo-button"
            onClick={handleDemo}>
            LOG IN AS A DEMO USER
          </button>
        </main>

        <footer id="splash-footer">
        <Link to="/">
            <img id="splash-nav-logo" src="https://i.postimg.cc/90ZXdwyq/homepage-photo.png" alt="splash-logo" />
          </Link>
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

          <div id="made-with-love">
            <p>Michael Ng Cen</p>
          </div>
        </footer>
      </div>
    )
  }


  const mainContent = () => {
    return (
      <Main history={history} location={location}/>
    )
  };

  return currentUser ? mainContent() : splashContent();
};


export default withRouter(Splash);
