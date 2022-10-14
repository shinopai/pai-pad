# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

# arr = [
#   'img_food01',
#   'img_food02',
#   'img_food03',
#   'img_food04',
#   'img_food05',
#   'img_food06',
#   'img_food07',
#   'img_food08',
#   'img_food09',
#   'img_food10',
#   'img_food11'
# ]

# 2500.times do |n|
# Recipe.create!(
#    title: Faker::Books::CultureSeries.book,
#    image: File.open('./app/assets/images/' + arr[rand(arr.size)] + '.jpg'),
#    comment: Faker::Science.science,
#    tips: Faker::Science.science,
#    upbringing: Faker::Science.science,
#    user_id: rand(1..User.count),
#    category_id: rand(1..Category.count)
# )
# end

Recipe.all.each do |recipe|
  recipe.materials.create!(
    name: Faker::Name.name
  )
end
