import { RECEIVE_CURRENT_USER } from '../../actions/session_actions'
import { RECEIVE_USER, RECEIVE_USERS } from '../../actions/user_actions'

const usersReducer = (state = {}, action) => {
  Object.freeze(state);
  switch(action.type) {
    case RECEIVE_CURRENT_USER:
      return Object.assign({}, state, { [action.currentUser.id]: action.currentUser });
    case RECEIVE_USER:
      if (!action.payload.user) {
        return Object.assign({}, state, { [action.payload.id]: action.payload });
      } else {
        return Object.assign({}, state, { [action.payload.user.id]: action.payload.user });
      }
    case RECEIVE_USERS:
      return Object.assign({}, state, action.users);
    default: 
      return state;
  }
};

export default usersReducer;