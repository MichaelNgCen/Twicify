import React from 'react';
import { withRouter } from 'react-router-dom';
import PlaylistContent from './playlist_content';

class PlaylistItem extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      isLoading: true,
    }
  }


  render() {

    const { playlists, songs, users, currentUser } = this.props;

    return (
      <PlaylistContent 
        playlists={playlists}
        songs={songs}
        users={users}
        currentUser={currentUser}
      />
    )
  }
}

export default withRouter(PlaylistItem);