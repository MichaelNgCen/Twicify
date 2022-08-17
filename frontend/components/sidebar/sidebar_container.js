import { connect } from "react-redux";
import Sidebar from "./sidebar";

const mSTP = (state, ownProps) => {
  const currentUser = state.session.id;
  return ({
    currentUser
  });
};

const mDTP = dispatch => {
  return {
  }
};

export default connect(mSTP, mDTP)(Sidebar);