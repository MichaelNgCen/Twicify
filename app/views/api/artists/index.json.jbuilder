@artists.each do |artist|
    json.set! artist.id do
        images = [] 
        json.partial! 'api/artists/artist', artist: artist 
        
        artist.photos.each do |photo|
          images << url_for(photo) if photo.attached?
        end

        json.photos images if images.any?
        json.created_at @likes[artist.id] if @likes[artist.id]
    end
end