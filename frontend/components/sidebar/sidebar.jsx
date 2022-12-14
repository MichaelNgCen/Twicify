import React from 'react';
import { Link } from 'react-router-dom';
import { withRouter } from 'react-router-dom';


class Sidebar extends React.Component {
  constructor(props) {
    super(props);
    
    this.handleCreate = this.handleCreate.bind(this)
  }

  componentDidMount() {
    this.props.fetchLikedPlaylists(this.props.currentUser);
  }

  handleCreate(e) {
    e.preventDefault();
    const userPlaylists = Object.values(this.props.playlists)
    const newPlaylist = {
        user_id: this.props.currentUser,
        name: `My Playlist #${userPlaylists.length + 1}`,
        private: false
    }
    this.props.createPlaylist(newPlaylist)
      .then(() => this.props.history.push(`/playlists/${this.props.lastPlaylist}`));
  };

  handleClick(e) {
    this.props.fetchPlaylist()
  }

  render() {
    const { playlists, likedPlaylists, currentUser } = this.props;
    const pathName = this.props.location.pathname.split('/');
    const location = pathName[1];
    const pageId = pathName[2];

    let userPlaylists = Object.values(playlists).filter(playlist =>
      playlist.user_id === currentUser || likedPlaylists.includes(playlist.id.toString())
    );

    return (
      <div className="user-data-directory">
        <Link id="sidebar-logo-link"to="/">
          <img id="sidebar-logo" src="https://i.postimg.cc/8CTCNWHV/imageedit-8-3299548283.png" />
        </Link>

        <div className="sidebar-directory">
          <button className={location === "" ? "selected-sidebar-button": "sidebar-button"} onClick={() => this.props.history.push('/')}>
          <i className="medium material-icons">home</i>
              <p className='sh'>Home</p>
          </button>

          <button className={location === "search" ? "selected-sidebar-button": "sidebar-button"} onClick={() => this.props.history.push('/search')}>
          <i className="medium material-icons">search</i>
              <p className='ss'>Search</p>
          </button>

          <button className={location === "library" && pageId !== "songs" ? "selected-sidebar-button": "sidebar-button"} onClick={() => this.props.history.push('/library/playlists')}>
          <i className="medium material-icons">library_music</i>
              <p className='yl'>Your Library</p>
          </button>
        </div>

        <div className="library-buttons">
          <span id="sidebar-divider">PLAYLISTS</span>
          <button className="library-button" onClick={this.handleCreate}>
              <i id="plus-square" className="fas fa-plus-square"></i>
              <p className='sb-create'>Create Playlist</p>
          </button> 

          <button className="library-button" onClick={() => this.props.history.push('/library/songs')}>
            <img id="liked-songs-icon" src="https://twicify-seed.s3.amazonaws.com/heart.jpg" />
            <p className="sb-liked" id="liked-">Liked Songs</p>
          </button> 
        </div>

        <div id="line-break"></div>
        
        <ul className="playlist-links">
          {userPlaylists.slice(0).reverse().map(playlist =>
            <li className="playlist-link" key={playlist.id}>
              <Link to={`/playlists/${playlist.id}`}>
                <div className="sidebar-playlist-item">
                  {playlist.name}
                </div>
              </Link>
            </li>
          )}
        </ul>
      </div>
    );
  }
}
 
export default withRouter(Sidebar);