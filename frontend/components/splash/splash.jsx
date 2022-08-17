import React from 'react';
import { Link } from 'react-router-dom'
import { withRouter } from 'react-router-dom';
import Main from '../main/main';

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
      <div className="sc">
        <nav className="sn">
        <Link to="/">
            <img id="snl" src="https://i.postimg.cc/90ZXdwyq/homepage-photo.png" alt="sl" />
          </Link>
          <ul className="sll">
            <li id="gs" className="splash-link"><a href="https://github.com/MichaelNgCen/Twicify" target="_blank">GitHub</a></li>
            <li id="ls" className="splash-link"><a href="https://www.linkedin.com/in/michaelngcen/" target="_blank">LinkedIn</a></li>
            <li className="splash-link-break"><span> | </span></li>
            <li className="splash-link"><Link to="/signup">Sign up</Link></li>
            <li className="splash-link"><Link to="/login">Log in</Link></li>
          </ul>
        </nav>

        <main id="splash">
          <div id="tagline">
            <h1 id="tagline-1">Music for</h1>
            <h1 id="tagline-2">everyone</h1>
          </div>

          <h4 id="sub-tagline">
            Listen to couple of songs for free.
          </h4>
          
          <button
            id="splash-demo-button"
            onClick={handleDemo}>
            LOG IN AS A DEMO USER
          </button>
        </main>

        <footer id="splash-footer">
        <Link to="/">
            <img id="snl" src="https://i.postimg.cc/90ZXdwyq/homepage-photo.png" alt="sl" />
          </Link>
          <div id="tech-stack-list">
            <p id="tech-stack-title">TECHONOLOGIES</p>
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

          <div id="credit">
            <p>Michael Ng Cen</p>
            <p>吴伟欢</p>
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
