import * as GenreAPIUtil from '../util/genre_api_util'

export const RECEIVE_GENRE = "RECEIVE_GENRE";

export const receiveGenre = payload => {
  return {
    type: RECEIVE_GENRE,
    payload
  }
}

export const fetchKpop = () => dispatch => {
  return GenreAPIUtil.fetchKpop()
    .then(
      genre => dispatch(receiveGenre(genre))
    )
}

export const fetchRap = () => dispatch => {
  return GenreAPIUtil.fetchRap()
    .then(
      genre => dispatch(receiveGenre(genre))
    )
}

export const fetchRock = () => dispatch => {
  return GenreAPIUtil.fetchRock()
    .then(
      genre => dispatch(receiveGenre(genre))
    )
}

export const fetchAnime = () => dispatch => {
  return GenreAPIUtil.fetchAnime()
    .then(
      genre => dispatch(receiveGenre(genre))
    )
}