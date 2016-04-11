# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
  # t.string   "name"
  #   t.string   "email"
  #   t.string   "password_digest"

  # create_table "hikes", force: :cascade do |t|
  #   t.string   "name"
  #   t.string   "location"
  #   t.string   "difficulty"
  #   t.text     "description"
  #   t.integer  "user_id"
  #   t.datetime "created_at",             null: false
  #   t.datetime "updated_at",             null: false
  #   t.float    "distance"
  #   t.string   "directions"
  #   t.string   "poo_bags_available"
  #   t.string   "dogs_allowed_off_leash"
  #   t.string   "trash_cans"

User.destroy_all
Hike.destroy_all

user = User.create({
  name: "admin",
  email: "admin@gmail.com",
  password:"admin",
  password_confirmation:"admin"
})

user.hikes.create({
  name: "Back of Hollywood sign in Griffith Park",
  location: "Hollywood Hills",
  difficulty: "moderate",
  description: "steady incline mostly in the sun with beautiful views of Los Angeles",
  distance: 6.5,
  directions: "3200 Canyon Drive, Griffith Park, LA",
  poo_bags_available: "yes",
  dogs_allowed_off_leash: "no",
  trash_cans: "yes"
  })
