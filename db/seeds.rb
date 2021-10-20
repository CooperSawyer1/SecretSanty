# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
GiftList.destroy_all
Gift.destroy_all

users = [{ name: "Santa Claus", username: "Supersanta421", email: "supersanta123@gmail.com", password: "HoHoHoHo1" },
         { name: "Elfy", username: "elfster123", email: "elfster3000@gmail.com", password: "elfelfelf3" },
         { name: "Momma Claus", username: "MissClause43", email: "missC@gmail.com", password: "misterclausrocks" },
         { name: "Rudolph", username: "Rudolph12", email: "bigredreindeer@apple.com", password: "blinkblink" }]

users.each do |user|
  User.create!(user)
end


gift_lists = [{ title: "Family" },
              { title: "Friends" },
              { title: "Coworkers" }]

gift_lists.each do |giftlist|
  GiftList.create!(giftlist)
end


gifts = [{ name: "Super Soaker", price: 12.99, website:"http://somethingcool.com", username: User.all.sample, gift_list: GiftList.all.sample },
  { name: "Chicken Wing", price: 11.99, website: "http://somethingcool.com", username: User.all.sample, gift_list: GiftList.all.sample },
  { name: "Puppy Monkey baby", price: 123.99, website: "http://somethingcool.com", username: User.all.sample, gift_list: GiftList.all.sample },
  { name: "Mammoth", price: 12_322.99, website: "http://somethingcool.com", username: User.all.sample, gift_list: GiftList.all.sample },
  { name: "Bowling Ball", price: 2.99, website: "http://somethingcool.com", username: User.all.sample, gift_list: GiftList.all.sample },
  { name: "Candy", price: 0.99, website: "http://somethingcool.com", username: User.all.sample, gift_list: GiftList.all.sample },
  { name: "Alarm Clock", price: 34.99, website: "http://somethingcool.com", username: User.all.sample, gift_list: GiftList.all.sample },
  { name: "Ipod Shuffle", price: 283.99, website: "http://somethingcool.com", username: User.all.sample, gift_list: GiftList.all.sample },
  { name: "Iphone 12 Mini", price: 799.99, website: "http://somethingcool.com", username: User.all.sample, gift_list: GiftList.all.sample },
  { name: "Water Bottle", price: 223.99, website: "http://somethingcool.com", username: User.all.sample, gift_list: GiftList.all.sample },
  { name: "Soccer Ball", price: 27.99, website: "http://somethingcool.com", username: User.all.sample, gift_list: GiftList.all.sample },
  { name: "Laptop", price: 345.99, website: "http://somethingcool.com", username: User.all.sample, gift_list: GiftList.all.sample }]

gifts.each do |gift|
Gift.create!(gift)
end