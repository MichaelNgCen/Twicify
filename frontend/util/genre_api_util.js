export const fetchKpop = () => {
  return $.ajax({
    method: 'GET',
    url: 'api/genres/-1',
    data: {
      genre: "K-pop"
    }
  })
};

export const fetchRap = () => {
  return $.ajax({
    method: "GET",
    url: 'api/genres/-1',
    data: {
      genre: "Rap"
    }
  })
};

export const fetchRock = () => {
  return $.ajax({
    method: "GET",
    url: 'api/genres/-1',
    data: {
      genre: "Rock"
    }
  })
};

export const fetchAnime = () => {
  return $.ajax({
    method: "GET",
    url: 'api/genres/-1',
    data: {
      genre: "Anime"
    }
  })
};