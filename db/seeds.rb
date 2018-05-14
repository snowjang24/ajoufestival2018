# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'rubygems' 
require 'faker'
include Faker


20.times do
    Pub.create(
        major: '미디어학과',
        pubname: Faker::Food.dish,
        date: Random.rand(6),
        pub_detail: Faker::Food.description,
        map: Random.rand(13),
        pubprice: Faker::Avatar.image("my-own-slug", "50x50", "jpg"),
        pubpost: Faker::Avatar.image("my-own-slug", "50x50", "jpg")
        )
end



user = User.new(
  email: 'user@domain.com', 
  password: '123456789', 
  password_confirmation: '123456789'
)

user.save!