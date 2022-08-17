import React from 'react';
import { connect } from "react-redux";

class Home extends React.Component {
  constructor(props) {
    super(props);
    this.state = {}
  }

  render() {
    const { currentUser } = this.props;

    return (
      <div className="genre-page-container">
        <div
          className="genre-page-header"
          id="home-header">
          <h1 className="genre-page-title">
            Welcome {currentUser}
          </h1>
        </div>

        <div className="home-section-container">
          <div className="genre-section">
            <h1 className="library-title">Popular Artists</h1>
            <div className="library-index">

            </div>
          </div>
        </div>

        <div className="home-section-container">
          <div className="genre-section">
            <h1 className="library-title">Popular Albums</h1>
            <div className="library-index">

            </div>
          </div>
        </div>

        <div className="home-section-container">
          <div className="genre-section">
            <h1 className="library-title">Trending Playlists</h1>
            <div className="library-index">

            </div>
          </div>
        </div>
      </div>
    );
  }
}

const mSTP = state => {
  const { users } = state.entities;
  const currentUser = users[state.session.id].username;

  return {
    currentUser
  }
}

export default connect(mSTP)(Home);