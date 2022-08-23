json.extract! album, :id, :title, :year, :artist_id, :genre, :duration, :single
json.cover_art url_for(album.cover_art) if album.cover_art.attached?
json.artist album.artist.name
json.artist_photo url_for(album.artist.photos[0]) if album.artist.photos.any?
json.itemLocation(("/albums/" + album.id.to_s))