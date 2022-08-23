json.extract! artist, :id, :name, :bio
# playlists = artist.playlists.unique_by_id 
# json.playlist_ids playlists.slice(0, 5).pluck(:id) if playlists.any?
json.itemLocation(("/artists/" + artist.id.to_s)) if artist.photos.any?