# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

Product.destroy_all
Like.destroy_all

10.times do
  product = Product.new(
    name: Faker::Pokemon.name
  )
  product.save!
end



10.times do
  like = Like.new(
    user_id: User.pluck(:id).sample,
    product_id: Product.pluck(:id).sample,
    liked: true
  )
  like.save!
end
