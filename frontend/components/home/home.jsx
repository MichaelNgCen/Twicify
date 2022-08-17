import React from 'react';
import { connect } from "react-redux";

class Home extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      curTime: ""
    }
  }

  componentDidMount() {
    this.getTime();
  }

  getTime = () => {
    var today = new Date(),
 
    curTime = today.getHours() + ':' + today.getMinutes() + ':' + today.getSeconds();
 
 
    this.setState({ curTime });
  };

  render() {
    const { currentUser } = this.props;
    return (
      <div className="genre-page-container">
        <div
          className="genre-page-header"
          id="home-header">
          <h1 className="genre-page-title">
            {this.state.curTime < "12:00:00" ? "Good Morning" : ""}
            {this.state.curTime >= "12:00:00" && this.state.curTime < "17:00:00" ? "Good Afternoon" : ""}
            {this.state.curTime >= "17:00:00" && this.state.curTime < "24:00:00" ? "Good Evening" : ""}
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