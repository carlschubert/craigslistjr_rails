# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


categories = ['Casual Encounters', 'Human Organs', 'Motorcycles', 'Pets', 'Mysterious Candy']


categories.each do |title|
  Category.create(title: title)
end



52.times do
  Article.create(title: Faker::Lorem.word, description: Faker::Lorem.sentence, price: rand(1..1000), email: Faker::Internet.email, category_id: rand(1..5), user_id: rand(1..2))
end

User.create(user_name: 'user', password: '123')
User.create(user_name: 'peon', password: '123')
