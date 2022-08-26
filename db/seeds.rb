# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'resolv-replace'

User.delete_all
Song.delete_all
Album.delete_all
Artist.delete_all
Playlist.delete_all
PlaylistSong.delete_all
Like.delete_all

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
artist9_banner = Artist.find_by(name: "Ikimonogakari").photos.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/bb.png"), filename: "bb.jpg")
artist9_bio_photo = Artist.find_by(name: "Ikimonogakari").photos.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/Ikimono_Gakari__Blue_BirdNaruto_opening.gif"), filename: "Ikimono_Gakari__Blue_BirdNaruto_opening.gif")

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
Song.find_by(title:'The World Is My Oyster').audio_file.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/The_World_Is_My_Oyster.mp3"), filename: "The_World_Is_My_Oyster.mp3")
Song.find_by(title:'Fearless').audio_file.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/FEARLESS.mp3"), filename: "FEARLESS.mp3")
Song.find_by(title:'Blue Flame').audio_file.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/Blue_Flame.mp3"), filename: "Blue_Flame.mp3")
Song.find_by(title:'The Great Mermaid').audio_file.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/The_Great_Mermaid.mp3"), filename: "The_Great_Mermaid.mp3")
Song.find_by(title:'Sour Grapes').audio_file.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/Sour_Grapes.mp3"), filename: "Sour_Grapes.mp3")

#twice Album
album2 = Album.create!(title: "FANCY YOU", artist: artist2, year: 2019, single: false, genre: "K-pop", duration: 848)
album2_cover = Album.second.cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/twice_ca.jpg"), filename: "twice_ca.jpg")
song6 = Song.create!(title: "FANCY", track_num: 1, duration: 213, album_id: album2.id)
Song.find_by(title:'FANCY').audio_file.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/FANCY.mp3"), filename: "FANCY.mp3")

#blackpink album
album3 = Album.create!(title: "THE ALBUM", artist: artist3, year: 2020, single: false, genre: "K-pop", duration: 1280)
album3_cover = Album.third.cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/bp_ca.jpg"), filename: "bp_ca.jpg")
song7 = Song.create!(title: "How You Like That", track_num: 1, duration: 182, album_id: album3.id)
song8 = Song.create!(title: "Pretty Savage", track_num: 3, duration: 201, album_id: album3.id)
song9 = Song.create!(title: "Lovesick Girls", track_num: 5, duration: 194, album_id: album3.id)
Song.find_by(title:'How You Like That').audio_file.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/How_You_Like_That.mp3"), filename: "How_You_Like_That.mp3")
Song.find_by(title:'Pretty Savage').audio_file.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/Pretty_Savage.mp3"), filename: "Pretty_Savage.mp3")
Song.find_by(title:'Lovesick Girls').audio_file.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/Lovesick_Girls.mp3"), filename: "Lovesick_Girls.mp3")

#IVE album
album4 = Album.create!(title: "ELEVEN", artist: artist4, year: 2021, single: true, genre: "K-pop", duration: 382)
album4_cover = Album.fourth.cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/ive_ca.jpg"), filename: "ive_ca.jpg")
song10 = Song.create!(title: "ELEVEN", track_num: 1, duration: 178, album_id: album4.id)
song11 = Song.create!(title: "Take It", track_num: 2, duration: 204, album_id: album4.id)
Song.find_by(title:'ELEVEN').audio_file.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/ELEVEN.mp3"), filename: "ELEVEN.mp3")
Song.find_by(title:'Take It').audio_file.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/Take+It.mp3"), filename: "Take It.mp3")

#aespa album
album5 = Album.create!(title: "Black Mamba", artist: artist5, year: 2020, single: true, genre: "K-pop", duration: 174)
album5_cover = Album.fifth.cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/aespa_ca.jpg"), filename: "aespa_ca.jpg")
song12 = Song.create!(title: "Black Mamba", track_num: 1, duration: 174, album_id: album5.id)
Song.find_by(title:'Black Mamba').audio_file.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/Black_Mamba.mp3"), filename: "Black_Mamba.mp3")

# JENNIE Album
album6 = Album.create!(title: "SOLO", artist: artist6, year: 2018, single: true, genre: "K-pop", duration: 169)
album6_cover = Album.find_by(title: "SOLO").cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/jennie_ca.jpg"), filename: "jennie_ca.jpg")
song13 = Song.create!(title: "SOLO", track_num: 1, duration: 169, album_id: album6.id)
Song.find_by(title:'SOLO').audio_file.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/SOLO.mp3"), filename: "SOLO.mp3")

#KW album
album7 = Album.create!(title: "808s & Heartbreak", artist: artist7, year: 2008, single: false, genre: "Rap", duration: 3119)
album7_cover = Album.find_by(title: "808s & Heartbreak").cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/kw_ca.jpg"), filename: "kw_ca.jpg")
song14 = Song.create!(title: "Heartless", track_num: 3, duration: 211, album_id: album7.id)
Song.find_by(title:'Heartless').audio_file.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/Heartless.mp3"), filename: "Heartless.mp3")

#BMTH Album
album8 = Album.create!(title: "This Is What The Edge Of Your Seat Was Made For", artist: artist8, year: 2004, single: false, genre: "Rock", duration: 1106)
album8_cover = Album.find_by(title: "This Is What The Edge Of Your Seat Was Made For").cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/bmth_ca.jpg"), filename: "bmth_ca.jpg")
song15 = Song.create!(title: "RAWWWRR!", track_num: 3, duration: 253, album_id: album8.id)
Song.find_by(title:'RAWWWRR!').audio_file.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/Rawwwrr.mp3"), filename: "Rawwwrr.mp3")

#Blue Bird
album9 = Album.create!(title: "Chou Ikimonobakari Tennen Kinen Members Best Selection", artist: artist9, year: 2006, single: true, genre: "Anime", duration: 215)
album9_cover = Album.find_by(title: "Chou Ikimonobakari Tennen Kinen Members Best Selection").cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/blue_bird_ca.jpg"), filename: "blue_bird_ca.jpg")
song16 = Song.create!(title: "ブルーバード", track_num: 1, duration: 215, album_id: album9.id)
Song.find_by(title:'ブルーバード').audio_file.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/blue_bird.mp3"), filename: "blue_bird.mp3")

#twice album 2
album10 = Album.create!(title: "Eyes Wide Open", artist: artist2, year: 2020, single: false, genre: "K-pop", duration: 205)
album10_cover = Album.find_by(title: "Eyes Wide Open").cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/twice.ca2.jpg"), filename: "twice_ca2.jpg")
song17 = Song.create!(title: "I CAN'T STOP ME", track_num: 1, duration: 205, album_id: album10.id)
Song.find_by(title:'I CAN\'T STOP ME').audio_file.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/I_CANT_STOP_ME.mp3"), filename: "I_CANT_STOP_ME.mp3")

#izone album
album11 = Album.create!(title: "COLOR*IZ", artist: artist10, year: 2018, single: false, genre: "K-pop", duration: 639)
album11_cover = Album.find_by(title: "COLOR*IZ").cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/izca.jpg"), filename: "color_iz_ca.jpg")
song18 = Song.create!(title: "La Vie en Rose", track_num: 1, duration: 218, album_id: album11.id)
Song.find_by(title:'La Vie en Rose').audio_file.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/La_Vie_en_Rose.mp3"), filename: "La_Vie_en_Rose.mp3")

#twice album 3
album12 = Album.create!(title: "Taste of Love", artist: artist2, year: 2021, single: false, genre: "K-pop", duration: 210)
album12_cover = Album.find_by(title: "Taste of Love").cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/twice.ca3.jpg"), filename: "twice_ca3.jpg")
song19 = Song.create!(title: "Alcohol-Free", track_num: 1, duration: 210, album_id: album12.id)
Song.find_by(title:'Alcohol-Free').audio_file.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/Alcohol-Free.mp3"), filename: "Alcohol-Free.mp3")

#twice album 4
album13 = Album.create!(title: "Feel Special", artist: artist2, year: 2019, single: false, genre: "K-pop", duration: 206)
album13_cover = Album.find_by(title: "Feel Special").cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/twice.ca4.jpg"), filename: "twice_ca4.jpg")
song20 = Song.create!(title: "Feel Special", track_num: 1, duration: 206, album_id: album13.id)
Song.find_by(title:'Feel Special').audio_file.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/Feel_Special.mp3"), filename: "Feel_Special.mp3")

#twice album 5
album14 = Album.create!(title: "What Is Love", artist: artist2, year: 2018, single: false, genre: "K-pop", duration: 208)
album14_cover = Album.find_by(title: "What Is Love").cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/twice.ca5.jpg"), filename: "twice_ca5.jpg")
song21 = Song.create!(title: "What Is Love", track_num: 1, duration: 208, album_id: album14.id)
Song.find_by(title:'What Is Love').audio_file.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/What_is_Love.mp3"), filename: "What_is_Love.mp3")

#blackpink album 2
album15 = Album.create!(title: "KILL THIS LOVE", artist: artist3, year: 2019, single: false, genre: "K-pop", duration: 191)
album15_cover = Album.find_by(title: "KILL THIS LOVE").cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/bp_ca2.jpg"), filename: "blackpink_ca2.jpg")
song22 = Song.create!(title: "Kill This Love", track_num: 1, duration: 191, album_id: album15.id)
Song.find_by(title:'Kill This Love').audio_file.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/Kill_This_Love.mp3"), filename: "Kill_This_Love.mp3")

#blackpink album 3
album16 = Album.create!(title: "SQUARE UP", artist: artist3, year: 2018, single: false, genre: "K-pop", duration: 211)
album16_cover = Album.find_by(title: "SQUARE UP").cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/bp_ca3.jpg"), filename: "blackpink_ca3.jpg")
song23 = Song.create!(title: "DDU-DU DDU-DU", track_num: 1, duration: 211, album_id: album16.id)
Song.find_by(title:'DDU-DU DDU-DU').audio_file.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/DDU-DU+DDU-DU.mp3"), filename: "DDU-DU DDU-DU.mp3")

#blackpink album 4
album17 = Album.create!(title: "As If It's Your Last", artist: artist3, year: 2017, single: false, genre: "K-pop", duration: 211)
album17_cover = Album.find_by(title: "As If It's Your Last").cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/bp_ca4.jpg"), filename: "blackpink_ca4.jpg")
song24 = Song.create!(title: "As If It's Your Last", track_num: 1, duration: 211, album_id: album17.id)
Song.find_by(title:"As If It's Your Last").audio_file.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/AS_IF_ITS_YOUR_LAST.mp3"), filename: "AS_IF_ITS_YOUR_LAST.mp3")

#red velvet album
album18 = Album.create!(title: "The ReVe Festival 2022 - Feel My Rhythm", artist: artist11, year: 2022, single: false, genre: "K-pop", duration: 210)
album18_cover = Album.find_by(title: "The ReVe Festival 2022 - Feel My Rhythm").cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/red_velvet_ca.jpg"), filename: "red_velvet_ca.jpg")
song25 = Song.create!(title: "Feel My Rhythm", track_num: 1, duration: 210, album_id: album18.id)
Song.find_by(title:'Feel My Rhythm').audio_file.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/Feel_My_Rhythm.mp3"), filename: "Feel_My_Rhythm.mp3")

#red velvet album 2
album19 = Album.create!(title: "Queendom - The 6th Mini Album", artist: artist11, year: 2021, single: false, genre: "K-pop", duration: 181)
album19_cover = Album.find_by(title: "Queendom - The 6th Mini Album").cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/red_velvet_ca2.jpg"), filename: "red_velvet_ca2.jpg")
song26 = Song.create!(title: "Queendom", track_num: 1, duration: 181, album_id: album19.id)

#red velvet album 3
album20 = Album.create!(title: "The ReVe Festival Finale", artist: artist11, year: 2019, single: false, genre: "K-pop", duration: 210)
album20_cover = Album.find_by(title: "The ReVe Festival Finale").cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/red_velvet_ca3.jpg"), filename: "red_velvet_ca3.jpg")
song27 = Song.create!(title: "Psycho", track_num: 1, duration: 210, album_id: album20.id)
Song.find_by(title:'Psycho').audio_file.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/Psycho.mp3"), filename: "Psycho.mp3")

#red velvet album 4
album21 = Album.create!(title: "The Perfect Red Velvet - The 2nd Album Repackage", artist: artist11, year: 2018, single: false, genre: "K-pop", duration: 399)
album21_cover = Album.find_by(title: "The Perfect Red Velvet - The 2nd Album Repackage").cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/red_velvet_ca4.jpg"), filename: "red_velvet_ca4.jpg")
song28 = Song.create!(title: "Bad Boy", track_num: 1, duration: 210, album_id: album21.id)
song29 = Song.create!(title: "Peek-A-Boo", track_num: 2, duration: 189, album_id: album21.id)
Song.find_by(title: "Bad Boy").audio_file.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/Bad_Boy.mp3"), filename: "Bad_Boy.mp3")
Song.find_by(title: "Peek-A-Boo").audio_file.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/Peek_A_Boo.mp3"), filename: "Peek_A_Boo.mp3")


#nayeon album
album22 = Album.create!(title: "IM NAYEON", artist: artist12, year: 2022, single: false, genre: "K-pop", duration: 926)
album22_cover = Album.find_by(title: "IM NAYEON").cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/nayeon_ca.jpg"), filename: "nayeon_ca.jpg")
song30 = Song.create!(title: "POP!", track_num: 1, duration: 168, album_id: album22.id)
Song.find_by(title:'POP!').audio_file.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/POP.mp3"), filename: "POP.mp3")

# IU album
album23 = Album.create!(title: "IU 5th Album LILAC", artist: artist13, year: 2021, single: false, genre: "K-pop", duration: 340)
album23_cover = Album.find_by(title: "IU 5th Album LILAC").cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/IU_ca.jpg"), filename: "IU_ca.jpg")
song31 = Song.create!(title: "LILAC", track_num: 1, duration: 168, album_id: album23.id)
Song.find_by(title:'LILAC').audio_file.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/LILAC.mp3"), filename: "LILAC.mp3")

#IVE album 2
album24 = Album.create!(title: "LOVE DIVE", artist: artist4, year: 2022, single: true, genre: "K-pop", duration: 383)
album24_cover = Album.find_by(title: "LOVE DIVE").cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/ive_ca2.jpg"), filename: "ive    _ca2.jpg")
song32 = Song.create!(title: "LOVE DIVE", track_num: 1, duration: 177, album_id: album24.id)
song33 = Song.create!(title: "ROYAL", track_num: 2, duration: 206, album_id: album24.id)
Song.find_by(title:'LOVE DIVE').audio_file.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/LOVE_DIVE.mp3"), filename: "LOVE_DIVE.mp3")
Song.find_by(title:'ROYAL').audio_file.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/ROYAL.mp3"), filename: "ROYAL.mp3")

#IVE album 3
album25 = Album.create!(title: "After LIKE", artist: artist4, year: 2022, single: true, genre: "K-pop", duration: 176)
album25_cover = Album.find_by(title: "After LIKE").cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/ive_ca3.jpg"), filename: "ive_ca3.jpg")
song34 = Song.create!(title: "After LIKE", track_num: 1, duration: 176, album_id: album25.id)
Song.find_by(title:'After LIKE').audio_file.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/After_LIKE.mp3"), filename: "After_LIKE.mp3")

#IZONE album 2
album26 = Album.create!(title: "One-reeler / Act IV", artist: artist10, year: 2020, single: false, genre: "K-pop", duration: 222)
album26_cover = Album.find_by(title: "One-reeler / Act IV").cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/IZONE_ca2.jpg"), filename: "IZONE_ca2.jpg")
song35 = Song.create!(title: "Panorama", track_num: 1, duration: 222, album_id: album26.id)
Song.find_by(title:'Panorama').audio_file.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/PANORAMA.mp3"), filename: "PANORAMA.mp3")

#IZONE album 3
album27 = Album.create!(title: "Oneiric Diary", artist: artist10, year: 2020, single: false, genre: "K-pop", duration: 192)
album27_cover = Album.find_by(title: "Oneiric Diary").cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/IZONE_ca3.jpg"), filename: "IZONE_ca3.jpg")
song36 = Song.create!(title: "Secret Story of the Swan", track_num: 1, duration: 192, album_id: album27.id)
Song.find_by(title:'Secret Story of the Swan').audio_file.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/Secret_Story_of_the_Swan.mp3"), filename: "Secret_Story_of_the_Swan.mp3")

#IZONE album 4
album28 = Album.create!(title: "BLOOM*IZ", artist: artist10, year: 2020, single: false, genre: "K-pop", duration: 217)
album28_cover = Album.find_by(title: "BLOOM*IZ").cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/IZONE_ca4.jpg"), filename: "IZONE_ca4.jpg")
song37 = Song.create!(title: "FIESTA", track_num: 1, duration: 217, album_id: album28.id)
Song.find_by(title:'FIESTA').audio_file.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/FIESTA.mp3"), filename: "FIESTA.mp3")

#IZONE album 5
album29 = Album.create!(title: "HEART*IZ", artist: artist10, year: 2019, single: false, genre: "K-pop", duration: 200)
album29_cover = Album.find_by(title: "HEART*IZ").cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/IZONE_ca5.jpg"), filename: "IZONE_ca5.jpg")
song38 = Song.create!(title: "Violeta", track_num: 1, duration: 200, album_id: album29.id)
Song.find_by(title:'Violeta').audio_file.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/Violeta.mp3"), filename: "Violeta.mp3")

#aespa album 2
album30 = Album.create!(title: "Next Level", artist: artist5, year: 2021, single: true, genre: "K-pop", duration: 221)
album30_cover = Album.find_by(title: "Next Level").cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/aespa_ca2.jpg"), filename: "aespa_ca2.jpg")
song39 = Song.create!(title: "Next Level", track_num: 1, duration: 221, album_id: album30.id)
Song.find_by(title:'Next Level').audio_file.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/Next_Level.mp3"), filename: "Next_Level.mp3")

#aespa album 3
album31 = Album.create!(title: "Savage - The 1st Mini Album", artist: artist5, year: 2021, single: false, genre: "K-pop", duration: 239)
album31_cover = Album.find_by(title: "Savage - The 1st Mini Album").cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/aespa_ca3.jpg"), filename: "aespa_ca3.jpg")
song40 = Song.create!(title: "Savage", track_num: 1, duration: 239, album_id: album31.id)
Song.find_by(title:'Savage').audio_file.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/Savage.mp3"), filename: "Savage.mp3")

#aespa album 4
album32 = Album.create!(title: "Dreams Come True - SM STATION", artist: artist5, year: 2021, single: true, genre: "K-pop", duration: 204)
album32_cover = Album.find_by(title: "Dreams Come True - SM STATION").cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/aespa_ca4.jpg"), filename: "aespa_ca4.jpg")
song41 = Song.create!(title: "Dreams Come True", track_num: 1, duration: 204, album_id: album32.id)
Song.find_by(title:'Dreams Come True').audio_file.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/Dreams_Come_True.mp3"), filename: "Dreams_Come_True.mp3")

#aespa album 5
album33 = Album.create!(title: "Girls - The 2nd Mini Album", artist: artist5, year: 2022, single: false, genre: "K-pop", duration: 240)
album33_cover = Album.find_by(title: "Girls - The 2nd Mini Album").cover_art.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/aespa_ca5.jpg"), filename: "aespa_ca5.jpg")
song42 = Song.create!(title: "Girls", track_num: 1, duration: 240, album_id: album33.id)
Song.find_by(title:'Girls').audio_file.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/Girls.mp3"), filename: "Girls.mp3")

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

playlist5 = Playlist.create!(user_id: user1.id, name: "nolja", description: "Time to press play on these jaem jams from 2010", private: "false")
playlist5_picture = Playlist.fifth.photo.attach(io: URI.open("https://twicify-seed.s3.amazonaws.com/nolja.png"), filename: "nolja.png")

#Create Likes
Like.create!(user_id: user1.id, likable_id: playlist1.id, likable_type: "Playlist")
Like.create!(user_id: user1.id, likable_id: playlist2.id, likable_type: "Playlist")
Like.create!(user_id: user1.id, likable_id: playlist3.id, likable_type: "Playlist")
Like.create!(user_id: user1.id, likable_id: playlist4.id, likable_type: "Playlist")
Like.create!(user_id: user1.id, likable_id: playlist5.id, likable_type: "Playlist")

Like.create!(user_id: user1.id, likable_id: artist1.id, likable_type: "Artist")
Like.create!(user_id: user1.id, likable_id: album6.id, likable_type: "Album")
