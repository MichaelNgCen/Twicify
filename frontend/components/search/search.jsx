import React from 'react';
import SongListItem from '../songs/song_list_item';
import LibraryItemContainer from '../library/library_item_container';

class Search extends React.Component {
  constructor(props) {
    super(props);
    this.state = {}

    this.handleNoResults = this.handleNoResults.bind(this);
  }

  handleNoResults() {
    const {
      searchPlaylistIds,
      searchResults,
      artists,
      albums,
      songs
    } = this.props;

    const playlistsLength = searchPlaylistIds.length;
    const artistsLength = Object.entries(artists).length;
    const albumsLength = Object.entries(albums).length;
    const songsLength = Object.entries(songs).length;

    if (searchResults && playlistsLength === 0 && artistsLength === 0 && albumsLength === 0 && songsLength == 0) {
      return "no-results-found-container";
    } else {
      return "hidden";
    }
  }

  render() {
    const {
      currentUser,
      searchResults,
      searchQuery,
      searchPlaylistIds,
      history,
      playlists,
      artists,
      albums,
      songs
    } = this.props;

    return (
      <>
        <div className={!searchResults ? "browse-genres-container" : "hidden"}>
          <h1 className="search-title">Browse all</h1>

          <div className="search-index">
            <div
              id="kpop"
              onClick={() => history.push('/genres/kpop')}
              className="genre-button">K-pop</div>
            <div
              id="rap"
              onClick={() => history.push('/genres/rap')}
              className="genre-button">Rap</div>
            <div
              id="rock"
              onClick={() => history.push('/genres/rock')}
              className="genre-button">Rock</div>
            <div
              id="anime"
              onClick={() => history.push('/genres/anime')}
              className="genre-button">Anime</div>
          </div>
        </div>

        <div className={searchResults ? "search-results-container" : "hidden"}>
          <div className={Object.entries(songs).length > 0 ? "search-songs-container" : "hidden"}>
            <h2 className="artist-songs-title">Songs</h2>
            <table className="song-columns">
              <tbody>
                {Object.values(songs).sort((a, b) => a.title.localeCompare(b.title)).slice(0).map((song, idx) =>
                  <SongListItem
                    song={song}
                    key={idx}
                    pageIdx={idx}
                    num={(idx + 1)}
                    currentUser={currentUser}
                  />)}
              </tbody>
            </table>
          </div>

          <div className={Object.entries(artists).length > 0 ? "artist-discography" : "hidden"}>
            <h2 className="artist-title">Artists</h2>
            <div className="library-index">
              {Object.values(artists).sort((a, b) => a.name.localeCompare(b.name)).map(((artist, idx) =>
                <LibraryItemContainer
                  id={artist.id}
                  artist={artist}
                  itemLocation={artist.itemLocation}
                  key={idx}
                  itemType="Artist" />
              ))}
            </div>
          </div>

          <div className={Object.entries(albums).length > 0 ? "artist-discography" : "hidden"}>
            <h2 className="artist-title">Albums</h2>
            <div className="library-index">
              {Object.values(albums).sort((a, b) => a.title.localeCompare(b.title)).map(((album, idx) =>
                <LibraryItemContainer
                  id={album.id}
                  album={album}
                  itemLocation={album.itemLocation}
                  key={idx}
                  itemType="Album" />
              ))}
            </div>
          </div>

          <div className={searchPlaylistIds.length > 0 ? "artist-playlists" : "hidden"}>
            <h2 className="artist-title">Playlists</h2>
            <div className="library-index">
              {Object.values(playlists)
                .sort((a, b) => a.name.localeCompare(b.name))
                .filter(playlist => searchPlaylistIds.includes(playlist.id))
                .map(((playlist, idx) =>
                  <LibraryItemContainer
                    id={playlist.id}
                    playlist={playlist}
                    itemLocation={playlist.itemLocation}
                    key={idx}
                    itemType="Playlist" />
              ))}
            </div>
          </div>
        </div>

        <div className={this.handleNoResults()}>
          <div className="no-results-text-container">
            <h2 className="no-results-title">No results found for "{searchQuery}"</h2>
            <span className="no-results-text">Please make sure your words are spelled correctly or use less or different keywords.</span>
          </div>
        </div>
      </>
    );
  }
}

export default Search;
