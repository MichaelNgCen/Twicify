import { connect } from "react-redux";
import Navbar from "./navbar"
import { logout } from '../../actions/session_actions';

const mSTP = state => {
  const currentUserId = state.session.id;
  const { users } = state.entities;
  const currentUsername = users[currentUserId].username;

  return ({
    currentUserId,
    currentUsername,
  });
};

const mDTP = dispatch => {
  return {
    logout: () => dispatch(logout()),
    fetchUser: id => dispatch(fetchUser(id)),
  }
};

export default connect(mSTP, mDTP)(Navbar);