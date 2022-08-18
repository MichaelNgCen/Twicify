import { connect } from "react-redux";
import Sidebar from "./sidebar";
import { createPlaylist, fetchPlaylist } from "../../actions/playlist_actions";

const mSTP = (state, ownProps) => {
  const currentUser = state.session.id;
  const { playlists } = state.entities;
  return ({
    playlists,
    currentUser
  });
};

const mDTP = dispatch => {
  return {
    fetchLikedPlaylists: currentUserId => dispatch(fetchLikedPlaylists(currentUserId)),
    fetchPlaylist: id => dispatch(fetchPlaylist(id)),
    createPlaylist: playlist => dispatch(createPlaylist(playlist)),
  }
};

export default connect(mSTP, mDTP)(Sidebar);