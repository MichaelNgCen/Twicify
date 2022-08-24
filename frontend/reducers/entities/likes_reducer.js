import { RECEIVE_USER } from "../../actions/user_actions";

const likesReducer = (state = {}, action) => {
  Object.freeze(state);
  switch (action.type) {
    default:
      return state;
  }
};

export default likesReducer;