import React from 'react';
import { connect } from "react-redux";
import LibraryItemContainer from "../library/library_item_container";

class Home extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      curTime: ''
    }
  }

  componentDidMount() {
    this.getTime();
  }

  getTime() {
    let today = new Date(),
            curTime = today.getHours();
        this.setState({ curTime });
  }

  render() {
    const { currentUser, homePlaylistIds, playlists, artists, albums } = this.props;
    const homePlaylists = Object.values(playlists).filter(playlist => homePlaylistIds.includes(playlist.id))

    return (
      <div className="genre-page-container">
        <div
          className="genre-page-header"
          id="home-header">
          <h1 className="genre-page-title">
            {this.state.curTime < 12 ? "Good Morning" : ""}
            {this.state.curTime >= 12 && this.state.curTime < 17? "Good Afternoon" : ""}
            {this.state.curTime >= 17 && this.state.curTime < 24 ? "Good Evening" : ""}, {currentUser}!
          </h1>
        </div>

        {console.log(artists)}
        <div className="home-section-container">
          <div className="genre-section">
            <h1 className="library-title">Popular Artists</h1>
            <div className="library-index">
              {Object.values(artists).map(((artist, idx) =>
                <LibraryItemContainer
                  id={artist.id}
                  artist={artist}
                  itemLocation={artist.itemLocation}
                  key={idx}
                  itemType={"Artist"} />
              ))}
            </div>
          </div>
        </div>

        <div className="home-section-container">
          <div className="genre-section">
            <h1 className="library-title">Popular Albums</h1>
            <div className="library-index">
              {Object.values(albums).map(((album, idx) =>
                <LibraryItemContainer
                  id={album.id}
                  album={album}
                  itemLocation={album.itemLocation}
                  key={idx}
                  itemType={"Album"} />
              ))}
            </div>
          </div>
        </div>

        <div className="home-section-container">
          <div className="genre-section">
            <h1 className="library-title">Trending Playlists</h1>
            <div className="library-index">
              {homePlaylists.map(((playlist, idx) =>
                <LibraryItemContainer
                  id={playlist.id}
                  playlist={playlist}
                  itemLocation={playlist.itemLocation}
                  key={idx}
                  itemType={"Playlist"} />
              ))}
            </div>
          </div>
        </div>
      </div>
    );
  }
}

const mSTP = state => {
  const { playlists, artists, albums, users } = state.entities;
  const currentUser = users[state.session.id].username;
  const homePlaylistIds = (state.ui.pagePlaylists);

  return {
    currentUser,
    homePlaylistIds,
    playlists,
    artists,
    albums
  }
}

export default connect(mSTP)(Home);