Review.destroy_all
Hiker.destroy_all
HikingTrail.destroy_all

hik1 = Hiker.create(
    name: "Iuliia", 
    member_since: 05/15/2019,
    followers: 10,
    stats: "7 falls"
)
hik2 = Hiker.create(
    name: "Lisa", 
    member_since: 04/10/2017,
    followers: 50,
    stats: "Devil's head"
)
hik3 = Hiker.create(
    name: "Kirill", 
    member_since: 05/15/2019,
    followers: 5,
    stats: "7 falls"
)
hik4 = Hiker.create(
    name: "Ronda", 
    member_since: 12/30/1998,
    followers: 545,
    stats: "Beer creek"
)


# make everything lower case
trail1 = HikingTrail.create(
    name: "7 falls",
    location: "boulder",
    difficulty_level: "easy",
    distance: 5,
    traffic: "high", 
    elevation: 7500,
    rout_type: "steps"

    trail2 = HikingTrail.create(
    name: "Evans",
    location: "Mount Evans Colorado",
    difficulty_level: "easy",
    distance: 14,
    traffic: "hard", 
    elevation: 14.5,
    rout_type: "road"
)

rev1 = Review.create(hiker: hik1, hiking_trail: trail1, rating: 10, user_comment: "Very beautiful!")
rev2 = Review.create(hiker: hik2, hiking_trail: trail2, rating: 9, user_comment: "Very easy!")
rev3 = Review.create(hiker: hik3, hiking_trail: trail2, rating: 5, user_comment: "Too much people")
rev4 = Review.create(hiker: hik2, hiking_trail: trail1, rating: 10, user_comment: "The restaurant inside is amazing!")

