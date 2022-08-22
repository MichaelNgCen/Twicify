# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'resolv-replace'

User.destroy_all
Song.destroy_all
Album.destroy_all
Artist.destroy_all
Playlist.destroy_all
PlaylistSong.destroy_all
Like.destroy_all

user1 = User.create!(username: "kimDahyun", password: "JennieKim", email: "demoemail@demo.com", email_confirmation: "demoemail@demo.com", gender: "NB", birthday:"1997/12/23")
user2 = User.create!(username: "Michael Ng Cen", password: "kimdahyun", email: "michaelngcen@yahoo.com", email_confirmation: "michaelngcen@yahoo.com", gender: "M", birthday:"1998/04/15")

artist1 = Artist.create!(name: "Le Serrafim", bio: "The group consists of five members: Sakura, Kim Chae-won, Huh Yun-jin, Kazuha and Hong Eun-chae. Originally a sextet, Kim Ga-ram was removed from the group on July 20, 2022, after the termination of her exclusive contractn\n")
album1 = Album.create!(title: "FEARLESS", artist: artist1, year: 2022, single: false, genre: "Hip hop", duration: 848)
song1 = Song.create!(title: "The World Is My Oyster", track_num: 1, duration: 106, album_id: album1.id)
song2 = Song.create!(title: "Fearless", track_num: 2, duration: 168, album_id: album1.id)
song3 = Song.create!(title: "Blue Flame", track_num: 3, duration: 201, album_id: album1.id)
song4 = Song.create!(title: "The Great Mermaid", track_num: 4, duration: 177, album_id: album1.id)
song5 = Song.create!(title: "Sour Grapes", track_num: 5, duration: 196, album_id: album1.id)

