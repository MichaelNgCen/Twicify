import React from 'react';
import { connect } from "react-redux";
import LibraryItemContainer from "../library/library_item_container";

class Genre extends React.Component {
  constructor(props) {
    super(props);
    this.state = {  }

    this.renderPageTitle = this.renderPageTitle.bind(this);
  }

  renderPageTitle() {
    const pathName = this.props.location.pathname.split('/');
    const genre = pathName[2];

    switch (genre) {
      case "kpop":
        return "K-Pop";
      case "rap":
        return "Rap"
      case "rock":
        return "Rock"
      case "anime":
        return "Anime"
      default:
        break;
    }
  }

  render() { 
    const { artists, albums } = this.props;
    const pathName = this.props.location.pathname.split('/');
    const genre = pathName[2];

    {console.log(artists)};
    return (
      <div className="genre-page-container">
        <div
          className="genre-page-header"
          id={genre}>
            <h1 className="genre-page-title">
              {this.renderPageTitle()}
            </h1>
        </div>

        <div className="genre-section-container">
          <div className="genre-section">
            <h1 className="library-title">Artists</h1>
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

        <div className="genre-section-container">
          <div className="genre-section">
            <h1 className="library-title">Albums</h1>
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
      </div>
    );
  }
}
 
const mSTP = state => {
  const { artists, albums } = state.entities;

  return {
    artists,
    albums
  }
}

export default connect(mSTP)(Genre);