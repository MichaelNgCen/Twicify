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
artist10 = Artist.create!(name: "IZ*ONE", bio: "The group was composed of twelve members: Jang Won-young, Sakura Miyawaki, Jo Yu-ri, Choi Ye-na, An Yu-jin, Nako Yabuki, Kwon Eun-bi, Kang Hye-won, Hitomi Honda, Kim Chae-won, Kim Min-ju, and Lee Chae-yeon.\n")
artist11 = Artist.create!(name: "Red Velvet", bio: "They originally debuted on August 1, 2014, with the single Happiness with the four-member line-up of Irene, Seulgi, Wendy and Joy. A fifth member, Yeri, joined the group in March 2015, following the release of their first mini album, Ice Cream Cake.\n")
artist12 = Artist.create!(name: "NAYEON", bio: "She became a member of the South Korean girl group Twice, under JYP Entertainment, in 2015 as a winning contestant of the reality survival television show Sixteen.\n")
artist13 = Artist.create!(name: "IU", bio: "Lee Ji-eun, also known by her stage name IU, is a South Korean singer-songwriter and actress.\n")


# Image for Le Serrafim
artist1_portrait = Artist.first.photos.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/lsf.jpg"), filename: "lsf.jpg")
artist1_banner = Artist.first.photos.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/lsf_bio.jpg"), filename: "lsf_bio.jpg")
artist1_bio_photo = Artist.first.photos.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/LE_SSERAFIM_FEARLESS_MV_TEASER_2.gif"), filename: "LE_SSERAFIM_FEARLESS_MV_TEASER_2.gif")

# Image for Twice
artist2_portrait = Artist.second.photos.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/twice.jpg"), filename: "twice.jpg")
artist2_banner = Artist.second.photos.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/twiceBanner.jpg"), filename: "twiceBanner.jpg")
artist2_bio_photo = Artist.second.photos.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/TWICE_I_CANT_STOP_ME_MV_Platform_Teaser.gif"), filename: "TWICE_I_CANT_STOP_ME_MV_Platform_Teaser.gif")

# Image for Blackpink
artist3_portrait = Artist.third.photos.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/bp.jpg"), filename: "bp.jpg")
artist3_banner = Artist.third.photos.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/bpBanner.jpg"), filename: "bpBanner.jpg")
artist3_bio_photo = Artist.third.photos.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/BLACKPINK__Kill_This_Love_MV_Teaser.gif"), filename: "BLACKPINK__Kill_This_Love_MV_Teaser.gif")

# Image for IVE
artist4_portrait = Artist.fourth.photos.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/ive.jpg"), filename: "ive.jpg")
artist4_banner = Artist.fourth.photos.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/iveBanner.jpg"), filename: "iveBanner.jpg")
artist4_bio_photo = Artist.fourth.photos.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/IVE__LOVE_DIVE_Teaser.gif"), filename: "IVE__LOVE_DIVE_Teaser.gif")

# Image for aespa
artist5_portrait = Artist.fifth.photos.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/aespa.jpg"), filename: "aespa.jpg")
artist5_banner = Artist.fifth.photos.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/aespaBanner.jpg"), filename: "aespaBanner.jpg")
artist5_bio_photo = Artist.fifth.photos.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/aespa__Savage_MV_Teaser.gif"), filename: "aespa__Savage_MV_Teaser.gif")

# Image for Jennie
artist6_portrait = Artist.find_by(name: "JENNIE").photos.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/jennie.jpg"), filename: "jennie.jpg")
artist6_banner = Artist.find_by(name: "JENNIE").photos.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/pv.jpg"), filename: "pv.jpg")
artist6_bio_photo = Artist.find_by(name: "JENNIE").photos.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/JENNIE__SOLO_MV_TEASER.gif"), filename: "JENNIE__SOLO_MV_TEASER.gif")

# Image for Kanye
artist7_portrait = Artist.find_by(name: "Kanye West").photos.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/kanye.jpg"), filename: "kanye.jpg")
artist7_banner = Artist.find_by(name: "Kanye West").photos.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/kanyeBanner2.jpg"), filename: "kanyeBanner.jpg")
artist7_bio_photo = Artist.find_by(name: "Kanye West").photos.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/kanyeBio.jpg"), filename: "kanyeBio.jpg")

# Image for Bring Me The Horizon
artist8_portrait = Artist.find_by(name: "Bring Me The Horizon").photos.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/bmth.jpg"), filename: "bmth.jpg")
artist8_banner = Artist.find_by(name: "Bring Me The Horizon").photos.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/bmthBanner.jpg"), filename: "bmthBanner.jpg")
artist8_bio_photo = Artist.find_by(name: "Bring Me The Horizon").photos.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/bmthBio.jpg"), filename: "bmthBio.jpg")

# Image for Ikimonogakari
artist9_portrait = Artist.find_by(name: "Ikimonogakari").photos.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/Ikimonogakari.jpg"), filename: "ikimonogakari.jpg")
artist9_banner = Artist.find_by(name: "Ikimonogakari").photos.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/IkimonogakariBanner.jpg"), filename: "ikimonogakariBanner.jpg")
artist9_bio_photo = Artist.find_by(name: "Ikimonogakari").photos.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/IkimonogakariBio.jpg"), filename: "ikimonogakariBio.jpg")

# Image for IzOne
artist10_portrait = Artist.find_by(name: "IZ*ONE").photos.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/izone.jpg"), filename: "izone.jpg")
artist10_banner = Artist.find_by(name: "IZ*ONE").photos.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/izoneBanner3.jpg"), filename: "izoneBanner2.jpg")
artist10_bio_photo = Artist.find_by(name: "IZ*ONE").photos.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/IZONE__Panorama_MV_Teaser_2.gif"), filename: "IZONE__Panorama_MV_Teaser_2.gif")

# Image for Red Velvet
artist11_portrait = Artist.find_by(name: "Red Velvet").photos.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/redvelvet.jpg"), filename: "redvelvet.jpg")
artist11_banner = Artist.find_by(name: "Red Velvet").photos.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/redvelvetBanner.jpg"), filename: "redvelvetBanner.jpg")
artist11_bio_photo = Artist.find_by(name: "Red Velvet").photos.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/Red_Velvet__Feel_My_Rhythm_MV_Teaser.gif"), filename: "Red_Velvet__Feel_My_Rhythm_MV_Teaser.gif")

# Image for NAYEON
artist12_portrait = Artist.find_by(name: "NAYEON").photos.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/nayeon.jpg"), filename: "nayeon.jpg")
artist12_banner = Artist.find_by(name: "NAYEON").photos.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/nayeonBanner.jpg"), filename: "nayeonBanner.jpg")
artist12_bio_photo = Artist.find_by(name: "NAYEON").photos.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/NAYEON_POP_MV_Teaser_2.gif"), filename: "NAYEON_POP_MV_Teaser_2.gif")

# Image for IU
artist13_portrait = Artist.find_by(name: "IU").photos.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/IU.jpg"), filename: "IU.jpg")
artist13_banner = Artist.find_by(name: "IU").photos.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/IUBanner.jpg"), filename: "IUBanner.jpg")
artist13_bio_photo = Artist.find_by(name: "IU").photos.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/Teaser_IU_Flu.gif"), filename: "Teaser_IU_Flu.gif")

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

#blackpink album
album3 = Album.create!(title: "THE ALBUM", artist: artist3, year: 2020, single: false, genre: "K-pop", duration: 1280)
album3_cover = Album.third.cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/bp_ca.jpg"), filename: "bp_ca.jpg")
song7 = Song.create!(title: "How You Like That", track_num: 1, duration: 182, album_id: album3.id)
song8 = Song.create!(title: "Pretty Savage", track_num: 3, duration: 201, album_id: album3.id)
song9 = Song.create!(title: "Lovesick Girls", track_num: 5, duration: 194, album_id: album3.id)

#IVE album
album4 = Album.create!(title: "ELEVEN", artist: artist4, year: 2021, single: true, genre: "K-pop", duration: 382)
album4_cover = Album.fourth.cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/ive_ca.jpg"), filename: "ive_ca.jpg")
song10 = Song.create!(title: "ELEVEN", track_num: 1, duration: 178, album_id: album4.id)
song11 = Song.create!(title: "Take It", track_num: 2, duration: 204, album_id: album4.id)

#aespa album
album5 = Album.create!(title: "Black Mamba", artist: artist5, year: 2020, single: true, genre: "K-pop", duration: 174)
album5_cover = Album.fifth.cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/aespa_ca.jpg"), filename: "aespa_ca.jpg")
song12 = Song.create!(title: "Black Mamba", track_num: 1, duration: 174, album_id: album5.id)

# JENNIE Album
album6 = Album.create!(title: "SOLO", artist: artist6, year: 2018, single: true, genre: "K-pop", duration: 169)
album6_cover = Album.find_by(title: "SOLO").cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/jennie_ca.jpg"), filename: "jennie_ca.jpg")
song13 = Song.create!(title: "SOLO", track_num: 1, duration: 169, album_id: album6.id)

#KW album
album7 = Album.create!(title: "808s & Heartbreak", artist: artist7, year: 2008, single: false, genre: "Rap", duration: 3119)
album7_cover = Album.find_by(title: "808s & Heartbreak").cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/kw_ca.jpg"), filename: "kw_ca.jpg")
song14 = Song.create!(title: "Say You Will", track_num: 1, duration: 377, album_id: album7.id)
song15 = Song.create!(title: "Welcome To Heartbreak", track_num: 2, duration: 262, album_id: album7.id)
song16 = Song.create!(title: "Heartless", track_num: 3, duration: 211, album_id: album7.id)
song17 = Song.create!(title: "Amazing", track_num: 4, duration: 238, album_id: album7.id)
song18 = Song.create!(title: "Love Lockdown", track_num: 5, duration: 270, album_id: album7.id)

#BMTH Album
album8 = Album.create!(title: "This Is What The Edge Of Your Seat Was Made For", artist: artist8, year: 2004, single: false, genre: "Rock", duration: 1106)
album8_cover = Album.find_by(title: "This Is What The Edge Of Your Seat Was Made For").cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/bmth_ca.jpg"), filename: "bmth_ca.jpg")
song19 = Song.create!(title: "re: they have no reflections", track_num: 1, duration: 342, album_id: album8.id)
song20 = Song.create!(title: "who wants flowers when you're dead? nobody", track_num: 2, duration: 294, album_id: album8.id)
song21 = Song.create!(title: "RAWWWRR!", track_num: 3, duration: 253, album_id: album8.id)   
song22 = Song.create!(title: "Traitor never Play Hang-man.", track_num: 4, duration: 217, album_id: album8.id)

#Blue Bird
album9 = Album.create!(title: "Chou Ikimonobakari Tennen Kinen Members Best Selection", artist: artist9, year: 2006, single: true, genre: "Anime", duration: 215)
album9_cover = Album.find_by(title: "Chou Ikimonobakari Tennen Kinen Members Best Selection").cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/blue_bird_ca.jpg"), filename: "blue_bird_ca.jpg")
song23 = Song.create!(title: "ブルーバード", track_num: 1, duration: 215, album_id: album9.id)

#twice album 2
album10 = Album.create!(title: "Eyes Wide Open", artist: artist2, year: 2020, single: false, genre: "K-pop", duration: 205)
album10_cover = Album.find_by(title: "Eyes Wide Open").cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/twice.ca2.jpg"), filename: "twice_ca2.jpg")
song24 = Song.create!(title: "I CAN'T STOP ME", track_num: 1, duration: 205, album_id: album10.id)

#izone album
album11 = Album.create!(title: "COLOR*IZ", artist: artist10, year: 2018, single: false, genre: "K-pop", duration: 639)
album11_cover = Album.find_by(title: "COLOR*IZ").cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/izca.jpg"), filename: "color_iz_ca.jpg")
song25 = Song.create!(title: "La Vie en Rose", track_num: 1, duration: 218, album_id: album11.id)

#twice album 3
album12 = Album.create!(title: "Taste of Love", artist: artist2, year: 2021, single: false, genre: "K-pop", duration: 210)
album12_cover = Album.find_by(title: "Taste of Love").cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/twice.ca3.jpg"), filename: "twice_ca3.jpg")
song26 = Song.create!(title: "Alcohol-Free", track_num: 1, duration: 210, album_id: album12.id)

#twice album 4
album13 = Album.create!(title: "Feel Special", artist: artist2, year: 2019, single: false, genre: "K-pop", duration: 206)
album13_cover = Album.find_by(title: "Feel Special").cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/twice.ca4.jpg"), filename: "twice_ca4.jpg")
song27 = Song.create!(title: "Feel Special", track_num: 1, duration: 206, album_id: album13.id)

#twice album 5
album14 = Album.create!(title: "What Is Love", artist: artist2, year: 2018, single: false, genre: "K-pop", duration: 208)
album14_cover = Album.find_by(title: "What Is Love").cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/twice.ca5.jpg"), filename: "twice_ca5.jpg")
song28 = Song.create!(title: "What Is Love", track_num: 1, duration: 208, album_id: album14.id)

#blackpink album 2
album15 = Album.create!(title: "KILL THIS LOVE", artist: artist3, year: 2019, single: false, genre: "K-pop", duration: 191)
album15_cover = Album.find_by(title: "KILL THIS LOVE").cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/bp_ca2.jpg"), filename: "blackpink_ca2.jpg")
song29 = Song.create!(title: "Kill This Love", track_num: 1, duration: 191, album_id: album15.id)

#blackpink album 3
album16 = Album.create!(title: "SQUARE UP", artist: artist3, year: 2018, single: false, genre: "K-pop", duration: 211)
album16_cover = Album.find_by(title: "SQUARE UP").cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/bp_ca3.jpg"), filename: "blackpink_ca3.jpg")
song30 = Song.create!(title: "DDU-DU DDU-DU", track_num: 1, duration: 211, album_id: album16.id)

#blackpink album 4
album17 = Album.create!(title: "As If It's Your Last", artist: artist3, year: 2017, single: false, genre: "K-pop", duration: 211)
album17_cover = Album.find_by(title: "As If It's Your Last").cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/bp_ca4.jpg"), filename: "blackpink_ca4.jpg")
song31 = Song.create!(title: "As If It's Your Last", track_num: 1, duration: 211, album_id: album17.id)

#red velvet album
album18 = Album.create!(title: "The ReVe Festival 2022 - Feel My Rhythm", artist: artist11, year: 2022, single: false, genre: "K-pop", duration: 210)
album18_cover = Album.find_by(title: "The ReVe Festival 2022 - Feel My Rhythm").cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/red_velvet_ca.jpg"), filename: "red_velvet_ca.jpg")
song32 = Song.create!(title: "Feel My Rhythm", track_num: 1, duration: 210, album_id: album18.id)

#red velvet album 2
album19 = Album.create!(title: "Queendom - The 6th Mini Album", artist: artist11, year: 2021, single: false, genre: "K-pop", duration: 181)
album19_cover = Album.find_by(title: "Queendom - The 6th Mini Album").cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/red_velvet_ca2.jpg"), filename: "red_velvet_ca2.jpg")
song33 = Song.create!(title: "Queendom", track_num: 1, duration: 181, album_id: album19.id)

#red velvet album 3
album20 = Album.create!(title: "The ReVe Festival Finale", artist: artist11, year: 2019, single: false, genre: "K-pop", duration: 210)
album20_cover = Album.find_by(title: "The ReVe Festival Finale").cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/red_velvet_ca3.jpg"), filename: "red_velvet_ca3.jpg")
song34 = Song.create!(title: "Psycho", track_num: 1, duration: 210, album_id: album20.id)

#red velvet album 4
album21 = Album.create!(title: "The Perfect Red Velvet - The 2nd Album Repackage", artist: artist11, year: 2018, single: false, genre: "K-pop", duration: 399)
album21_cover = Album.find_by(title: "The Perfect Red Velvet - The 2nd Album Repackage").cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/red_velvet_ca4.jpg"), filename: "red_velvet_ca4.jpg")
song35 = Song.create!(title: "Bad Boy", track_num: 1, duration: 210, album_id: album21.id)
song36 = Song.create!(title: "Peek-A-Boo", track_num: 2, duration: 189, album_id: album21.id)

#nayeon album
album22 = Album.create!(title: "IM NAYEON", artist: artist12, year: 2022, single: false, genre: "K-pop", duration: 926)
album22_cover = Album.find_by(title: "IM NAYEON").cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/nayeon_ca.jpg"), filename: "nayeon_ca.jpg")
song37 = Song.create!(title: "POP!", track_num: 1, duration: 168, album_id: album22.id)
song38 = Song.create!(title: "NO PROBLEM(Feat. Felix of Stray Kids)", track_num: 2, duration: 196, album_id: album22.id)
song39 = Song.create!(title: "LOVE COUNTDOWN (Feat. Wonstein)", track_num: 3, duration: 197, album_id: album22.id)
song40 = Song.create!(title: "CANDYFLOSS", track_num: 4, duration: 181, album_id: album22.id)
song41 = Song.create!(title: "ALL OR NOTHING", track_num: 5, duration: 184, album_id: album22.id)

#IU album
album23 = Album.create!(title: "IU 5th Album LILAC", artist: artist13, year: 2021, single: false, genre: "K-pop", duration: 340)
album23_cover = Album.find_by(title: "IU 5th Album LILAC").cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/IU_ca.jpg"), filename: "IU_ca.jpg")
song42 = Song.create!(title: "LILAC", track_num: 1, duration: 168, album_id: album23.id)
song43 = Song.create!(title: "Celebrity", track_num: 2, duration: 172, album_id: album23.id)

#IVE album 2
album24 = Album.create!(title: "LOVE DIVE", artist: artist4, year: 2022, single: true, genre: "K-pop", duration: 383)
album24_cover = Album.find_by(title: "LOVE DIVE").cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/ive_ca2.jpg"), filename: "ive    _ca2.jpg")
song44 = Song.create!(title: "LOVE DIVE", track_num: 1, duration: 177, album_id: album24.id)
song45 = Song.create!(title: "ROYAL", track_num: 2, duration: 206, album_id: album24.id)

#IVE album 3
album25 = Album.create!(title: "After LIKE", artist: artist4, year: 2022, single: true, genre: "K-pop", duration: 176)
album25_cover = Album.find_by(title: "After LIKE").cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/ive_ca3.jpg"), filename: "ive_ca3.jpg")
song46 = Song.create!(title: "After LIKE", track_num: 1, duration: 176, album_id: album25.id)

#IZONE album 2
album26 = Album.create!(title: "One-reeler / Act IV", artist: artist10, year: 2020, single: false, genre: "K-pop", duration: 222)
album26_cover = Album.find_by(title: "One-reeler / Act IV").cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/IZONE_ca2.jpg"), filename: "IZONE_ca2.jpg")
song47 = Song.create!(title: "Panorama", track_num: 1, duration: 222, album_id: album26.id)

#IZONE album 3
album27 = Album.create!(title: "Oneiric Diary", artist: artist10, year: 2020, single: false, genre: "K-pop", duration: 192)
album27_cover = Album.find_by(title: "Oneiric Diary").cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/IZONE_ca3.jpg"), filename: "IZONE_ca3.jpg")
song48 = Song.create!(title: "Secret Story of the Swan", track_num: 1, duration: 192, album_id: album27.id)

#IZONE album 4
album28 = Album.create!(title: "BLOOM*IZ", artist: artist10, year: 2020, single: false, genre: "K-pop", duration: 217)
album28_cover = Album.find_by(title: "BLOOM*IZ").cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/IZONE_ca4.jpg"), filename: "IZONE_ca4.jpg")
song49 = Song.create!(title: "FIEST", track_num: 1, duration: 217, album_id: album28.id)

#IZONE album 5
album29 = Album.create!(title: "HEART*IZ", artist: artist10, year: 2019, single: false, genre: "K-pop", duration: 200)
album29_cover = Album.find_by(title: "HEART*IZ").cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/IZONE_ca5.jpg"), filename: "IZONE_ca5.jpg")
song50 = Song.create!(title: "Violeta", track_num: 1, duration: 200, album_id: album29.id)

#aespa album 2
album30 = Album.create!(title: "Next Level", artist: artist5, year: 2021, single: true, genre: "K-pop", duration: 221)
album30_cover = Album.find_by(title: "Next Level").cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/aespa_ca2.jpg"), filename: "aespa_ca2.jpg")
song51 = Song.create!(title: "Next Level", track_num: 1, duration: 221, album_id: album30.id)

#aespa album 3
album31 = Album.create!(title: "Savage - The 1st Mini Album", artist: artist5, year: 2021, single: false, genre: "K-pop", duration: 239)
album31_cover = Album.find_by(title: "Savage - The 1st Mini Album").cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/aespa_ca3.jpg"), filename: "aespa_ca3.jpg")
song52 = Song.create!(title: "Savage", track_num: 1, duration: 239, album_id: album31.id)

#aespa album 4
album32 = Album.create!(title: "Dreams Come True - SM STATION", artist: artist5, year: 2021, single: true, genre: "K-pop", duration: 204)
album32_cover = Album.find_by(title: "Dreams Come True - SM STATION").cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/aespa_ca4.jpg"), filename: "aespa_ca4.jpg")
song53 = Song.create!(title: "Dreams Come True", track_num: 1, duration: 204, album_id: album32.id)

#aespa album 5
album33 = Album.create!(title: "Girls - The 2nd Mini Album", artist: artist5, year: 2022, single: false, genre: "K-pop", duration: 240)
album33_cover = Album.find_by(title: "Girls - The 2nd Mini Album").cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/aespa_ca5.jpg"), filename: "aespa_ca5.jpg")
song54 = Song.create!(title: "Girls", track_num: 1, duration: 240, album_id: album33.id)

#PLAYLISTS
playlist1 = Playlist.create!(user_id: user1.id, name: "Girl Krush!", description: "All your girl crushes in one place.", private: "false")
playlist1_picture = Playlist.first.photo.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/girlKrush.png"), filename: "girlKrush.png")
playlistSong1 = PlaylistSong.create!(playlist_id: playlist1.id, song_id: song6.id)

playlist2 = Playlist.create!(user_id: user1.id, name: "WOR K OUT", description: "Workout to K-Pop? Count me in! ", private: "false")
playlist2_picture = Playlist.second.photo.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/worKout.png"), filename: "worKout.png")
playlistSong2 = PlaylistSong.create!(playlist_id: playlist2.id, song_id: song1.id)

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
