# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Post.destroy_all
Category.create({name: "Technology"})
Category.create({name: "Life"})
Category.create({name: "Education"})
Category.create({name: "Others"})

10.times do |i|
	Post.create(name: "Learn Rials#{i}", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus rem nihil iusto, eos, officiis itaque repellendus quaerat alias esse ipsa perspiciatis ipsam, deleniti libero minima magni neque consequatur. Dolore, provident.", category_id: "#{i}", image: "#{i}.png", user_id: 1)
end


