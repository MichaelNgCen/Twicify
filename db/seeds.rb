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

# create users
user1 = User.create!(username: "kimDahyun", password: "JennieKim", email: "demoemail@demo.com", email_confirmation: "demoemail@demo.com", gender: "NB", birthday:"1997/12/23")
user2 = User.create!(username: "Michael Ng Cen", password: "kimdahyun", email: "michaelngcen@yahoo.com", email_confirmation: "michaelngcen@yahoo.com", gender: "M", birthday:"1998/04/15")

# create artists
artist1 = Artist.create!(name: "Le Serrafim", bio: "The group consists of five members: Sakura, Kim Chae-won, Huh Yun-jin, Kazuha and Hong Eun-chae. Originally a sextet, Kim Ga-ram was removed from the group on July 20, 2022, after the termination of her exclusive contractn\n")
artist2 = Artist.create!(name: "Twice", bio: "The group is composed of nine members: Nayeon, Jeongyeon, Momo, Sana, Jihyo, Mina, Dahyun, Chaeyoung, and Tzuyu.\n")
artist3 = Artist.create!(name: "Blackpink", bio: "The group is a South Korean girl group formed by YG Entertainment, consisting of members Jisoo, Jennie, Rosé, and Lisa.\n")
artist4 = Artist.create!(name: "IVE", bio: "The group is composed of six members: Yujin, Gaeul, Rei, Wonyoung, Liz and Leeseo.\n")
artist5 = Artist.create!(name: "aespa", bio: "The group consists of four members: Karina, Giselle, Winter, and Ningning.\n")
artist6 = Artist.create!(name: "JENNIE", bio: "As one of the founding members of Blackpink , South Korean vocalist Jennie Kim made a quick rise to the top of the charts with the K-pop quartet before breaking records on her own as a solo artist.\n")
artist7 = Artist.create!(name: "Kanye West", bio: "American rapper, record producer, and fashion designer.\n")
artist8 = Artist.create!(name: "Bring Me The Horizon", bio: "British rock band formed in Sheffield in 2004. The group consists of lead vocalist Oliver Sykes, guitarist Lee Malia, bassist Matt Kean, drummer Matt Nicholls and keyboardist Jordan Fish.\n")
artist9 = Artist.create!(name: "Ikimonogakari", bio: "Japanese pop rock duo from Kanagawa Prefecture, Japan consisting of Yoshiki Mizuno and Kiyoe Yoshioka.\n")

# Image for Le Serrafim
artist1_portrait = Artist.first.photos.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/lsf.jpg"), filename: "lsf.jpg")
# artist1_banner = Artist.first.photos.attach(io: URI.open("/Users/michaelngcen/Desktop/twicify/app/assets/images/lsf_banner.jpg"), filename: "lsf_banner.jpg")
# artist1_bio_photo = Artist.first.photos.attach(io: URI.open("/Users/michaelngcen/Desktop/twicify/app/assets/images/lsf_bio.jpg"), filename: "lsf_bio.jpg")

# Image for Twice
artist2_portrait = Artist.second.photos.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/twice.jpg"), filename: "twice.jpg")

# Image for Blackpink
artist3_portrait = Artist.third.photos.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/bp.jpg"), filename: "bp.jpg")

# Image for IVE
artist4_portrait = Artist.fourth.photos.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/ive.jpg"), filename: "ive.jpg")

# Image for aespa
artist5_portrait = Artist.fifth.photos.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/aespa.jpg"), filename: "aespa.jpg")

# Image for Jennie
artist6_portrait = Artist.find_by(name: "JENNIE").photos.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/jennie.jpg"), filename: "jennie.jpg")
# artist6_banner = Artist.find_by(name: "JENNIE").photos.attach(io: URI.open("/Users/michaelngcen/Desktop/twicify/app/assets/images/jennieBanner.jpg"), filename: "jennieBanner.jpg")

# Image for Kanye
artist7_portrait = Artist.find_by(name: "Kanye West").photos.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/kanye.jpg"), filename: "kanye.jpg")

# Image for Bring Me The Horizon
artist8_portrait = Artist.find_by(name: "Bring Me The Horizon").photos.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/bmth.jpg"), filename: "bmth.jpg")

# Image for Ikimonogakari
artist9_portrait = Artist.find_by(name: "Ikimonogakari").photos.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/Ikimonogakari.jpg"), filename: "ikimonogakari.jpg")

#le Serrafim albums
album1 = Album.create!(title: "FEARLESS", artist: artist1, year: 2022, single: false, genre: "K-pop", duration: 848)
album1_cover = Album.first.cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/lsf_banner.jpg"), filename: "lsf_banner.jpg")
song1 = Song.create!(title: "The World Is My Oyster", track_num: 1, duration: 106, album_id: album1.id)
song2 = Song.create!(title: "Fearless", track_num: 2, duration: 168, album_id: album1.id)
song3 = Song.create!(title: "Blue Flame", track_num: 3, duration: 201, album_id: album1.id)
song4 = Song.create!(title: "The Great Mermaid", track_num: 4, duration: 177, album_id: album1.id)
song5 = Song.create!(title: "Sour Grapes", track_num: 5, duration: 196, album_id: album1.id)
# Song.find_by(title:'Fearless').audio_file.attach(io: URI.open("/Users/michaelngcen/Desktop/twicify/app/assets/audio/FEARLESS.mp3"), filename: "FEARLESS.mp3")


#twice Album
album2 = Album.create!(title: "FANCY YOU", artist: artist2, year: 2019, single: false, genre: "K-pop", duration: 848)
album2_cover = Album.second.cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/twice_ca.jpg"), filename: "twice_ca.jpg")
song6 = Song.create!(title: "FANCY", track_num: 1, duration: 213, album_id: album2.id)
song7 = Song.create!(title: "STUCK IN MY HEAD", track_num: 2, duration: 176, album_id: album2.id)
song8 = Song.create!(title: "GIRLS LIKE US", track_num: 3, duration: 158, album_id: album2.id)
song9 = Song.create!(title: "HOT", track_num: 4, duration: 177, album_id: album2.id)
song10 = Song.create!(title: "TURN IT UP", track_num: 5, duration: 187, album_id: album2.id)
song11 = Song.create!(title: "STRAWBERRY", track_num: 6, duration: 209, album_id: album2.id)

#blackpink album
album3 = Album.create!(title: "THE ALBUM", artist: artist3, year: 2020, single: false, genre: "K-pop", duration: 1280)
album3_cover = Album.third.cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/bp_ca.jpg"), filename: "bp_ca.jpg")
song12 = Song.create!(title: "How You Like That", track_num: 1, duration: 182, album_id: album3.id)
song13 = Song.create!(title: "Ice Cream (with Selena Gomez)", track_num: 2, duration: 177, album_id: album3.id)
song14 = Song.create!(title: "Pretty Savage", track_num: 3, duration: 201, album_id: album3.id)
song15 = Song.create!(title: "Bet You Wanna (feat. Cardi B)", track_num: 4, duration: 161, album_id: album3.id)
song16 = Song.create!(title: "Lovesick Girls", track_num: 5, duration: 194, album_id: album3.id)
song17 = Song.create!(title: "Crazy Over You", track_num: 6, duration: 163, album_id: album3.id)
song18 = Song.create!(title: "Love To Hate Me", track_num: 7, duration: 171, album_id: album3.id)
song19 = Song.create!(title: "You Never Know", track_num: 8, duration: 231, album_id: album3.id)

#IVE album
album4 = Album.create!(title: "ELEVEN", artist: artist4, year: 2022, single: true, genre: "K-pop", duration: 382)
album4_cover = Album.fourth.cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/ive_ca.jpg"), filename: "ive_ca.jpg")
song20 = Song.create!(title: "ELEVEN", track_num: 1, duration: 178, album_id: album4.id)
song21 = Song.create!(title: "Take It", track_num: 2, duration: 204, album_id: album4.id)

#aespa album
album5 = Album.create!(title: "Black Mamba", artist: artist5, year: 2020, single: true, genre: "K-pop", duration: 174)
album5_cover = Album.fifth.cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/aespa_ca.jpg"), filename: "aespa_ca.jpg")
song22 = Song.create!(title: "Black Mamba", track_num: 1, duration: 174, album_id: album5.id)

# JENNIE Album
album6 = Album.create!(title: "SOLO", artist: artist6, year: 2018, single: true, genre: "K-pop", duration: 169)
album6_cover = Album.find_by(title: "SOLO").cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/jennie_ca.jpg"), filename: "jennie_ca.jpg")
song23 = Song.create!(title: "SOLO", track_num: 1, duration: 169, album_id: album6.id)

#KW album
album7 = Album.create!(title: "808s & Heartbreak", artist: artist7, year: 2008, single: false, genre: "Rap", duration: 3119)
album7_cover = Album.find_by(title: "808s & Heartbreak").cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/kw_ca.jpg"), filename: "kw_ca.jpg")
song24 = Song.create!(title: "Say You Will", track_num: 1, duration: 377, album_id: album7.id)
song25 = Song.create!(title: "Welcome To Heartbreak", track_num: 2, duration: 262, album_id: album7.id)
song26 = Song.create!(title: "Heartless", track_num: 3, duration: 211, album_id: album7.id)
song27 = Song.create!(title: "Amazing", track_num: 4, duration: 238, album_id: album7.id)
song28 = Song.create!(title: "Love Lockdown", track_num: 5, duration: 270, album_id: album7.id)
song29 = Song.create!(title: "Paranoid", track_num: 6, duration: 277, album_id: album7.id)
song30 = Song.create!(title: "RoboCop", track_num: 7, duration: 274, album_id: album7.id)
song31 = Song.create!(title: "Stree Lights", track_num: 8, duration: 189, album_id: album7.id)
song32 = Song.create!(title: "Bad News", track_num: 9, duration: 238, album_id: album7.id)
song33 = Song.create!(title: "See You In My Nightmares", track_num: 10, duration: 258, album_id: album7.id)
song34 = Song.create!(title: "Coldest Winter", track_num: 11, duration: 164, album_id: album7.id)
song35 = Song.create!(title: "Pinocchio Story", track_num: 12, duration: 361, album_id: album7.id)

#BMTH Album
album8 = Album.create!(title: "This Is What The Edge Of Your Seat Was Made For", artist: artist8, year: 2004, single: false, genre: "Rock", duration: 1106)
album8_cover = Album.find_by(title: "This Is What The Edge Of Your Seat Was Made For").cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/bmth_ca.jpg"), filename: "bmth_ca.jpg")
song36 = Song.create!(title: "re: they have no reflections", track_num: 1, duration: 342, album_id: album8.id)
song37 = Song.create!(title: "who wants flowers when you're dead? nobody", track_num: 2, duration: 294, album_id: album8.id)
song38 = Song.create!(title: "RAWWWRR!", track_num: 3, duration: 253, album_id: album8.id)   
song39 = Song.create!(title: "Traitor never Play Hang-man.", track_num: 4, duration: 217, album_id: album8.id)

#Blue Bird
album9 = Album.create!(title: "Chou Ikimonobakari Tennen Kinen Members Best Selection", artist: artist9, year: 2006, single: true, genre: "Anime", duration: 215)
album9_cover = Album.find_by(title: "Chou Ikimonobakari Tennen Kinen Members Best Selection").cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/blue_bird_ca.jpg"), filename: "blue_bird_ca.jpg")
song40 = Song.create!(title: "ブルーバード", track_num: 1, duration: 215, album_id: album9.id)

#PLAYLISTS
playlist1 = Playlist.create!(user_id: user1.id, name: "Girl Krush!", description: "All your girl crushes in one place.", private: "false")
playlist1_picture = Playlist.first.photo.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/girlKrush.png"), filename: "girlKrush.png")
playlistSong1 = PlaylistSong.create!(playlist_id: playlist1.id, song_id: song6.id)

playlist2 = Playlist.create!(user_id: user1.id, name: "WOR K OUT", description: "Workout to K-Pop? Count me in! ", private: "false")
playlist2_picture = Playlist.second.photo.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/worKout.png"), filename: "worKout.png")

playlist3 = Playlist.create!(user_id: user1.id, name: "KimBops", description: "Rolling with the 'bops' in your Kimbap. Bringing you the songs that are currently trending and everything else in between", private: "false")
playlist3_picture = Playlist.third.photo.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/kimbops.png"), filename: "kimbops.png")

playlist4 = Playlist.create!(user_id: user1.id, name: "Summer K-Pop Hits", description: "Be cool with refreshing Tropical K-Pop dance music!", private: "false")
playlist4_picture = Playlist.fourth.photo.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/sh.png"), filename: "sh.png")

playlist5 = Playlist.create!(user_id: user1.id, name: "Nolja!", description: "Time to press play on these jaem jams from 2010 onwards!", private: "false")
playlist5_picture = Playlist.fifth.photo.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/nolja.png"), filename: "nolja.png")

#Create Likes
Like.create!(user_id: user1.id, likable_id: playlist1.id, likable_type: "Playlist")
Like.create!(user_id: user1.id, likable_id: playlist2.id, likable_type: "Playlist")
Like.create!(user_id: user1.id, likable_id: playlist3.id, likable_type: "Playlist")
Like.create!(user_id: user1.id, likable_id: playlist4.id, likable_type: "Playlist")
Like.create!(user_id: user1.id, likable_id: playlist5.id, likable_type: "Playlist")

Like.create!(user_id: user1.id, likable_id: artist1.id, likable_type: "Artist")
Like.create!(user_id: user1.id, likable_id: album6.id, likable_type: "Album")
