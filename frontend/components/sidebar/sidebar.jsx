import React from 'react';
import { Link } from 'react-router-dom';
import { withRouter } from 'react-router-dom';

class Sidebar extends React.Component {
  constructor(props) {
    super(props);
    
    this.handleCreate = this.handleCreate.bind(this)
  }

  componentDidMount() {
  }

  handleCreate(e) {
    e.preventDefault();
    
  };

  handleClick(e) {
  }

  render() {
    const { currentUser } = this.props;
    const pathName = this.props.location.pathname.split('/');
    const location = pathName[1];
    const pageId = pathName[2];

    

    return (
      <div className="user-data-directory">
        <Link to="/">
            <img id="snl" src="https://i.postimg.cc/90ZXdwyq/homepage-photo.png" alt="sl" />
          </Link>

        <div className="sidebar-directory">
          <button className={location === "" ? "selected-sidebar-button": "sidebar-button"} onClick={() => this.props.history.push('/')}>
              <i className="medium material-icons">Home</i>
          </button>

          <button className={location === "search" ? "selected-sidebar-button": "sidebar-button"} onClick={() => this.props.history.push('/search')}>
              <i className="medium material-icons">Search</i>
          </button>

          <button className={location === "library" && pageId !== "songs" ? "selected-sidebar-button": "sidebar-button"} onClick={() => this.props.history.push('/library/playlists')}>
              <i className="medium material-icons">Your Library</i>
          </button>
        </div>

        <div className="library-buttons">
          <span id="sidebar-divider">PLAYLISTS</span>
          <button className="library-button" onClick={this.handleCreate}>
              <i id="plus-square" className="fas fa-plus-square"></i>
              <p>Create Playlist</p>
          </button> 

          <button className="library-button" onClick={() => this.props.history.push('/library/songs')}>
            <img id="liked-songs-icon" src={window.likedSongsIcon} />
            <p id="liked-">Liked Songs</p>
          </button> 
        </div>

        <div id="line-break"></div>
        
        <ul className="playlist-links">
        </ul>
      </div>
    );
  }
}
 
export default withRouter(Sidebar);