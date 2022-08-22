import React from 'react';
import { withRouter } from 'react-router-dom';
import AlbumContent from './album_content';

class AlbumItem extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      isLoading: true,
    }
  }

  render() {
    if (!this.props.album) {
      return null;
    }

    const { album, songs, currentUser } = this.props;
    const artistId = album.artist_id;

    return (
      <AlbumContent
        album={album}
        songs={songs}
        currentUser={currentUser}
        artistId={artistId}
      />
    )
  }
}

export default withRouter(AlbumItem);