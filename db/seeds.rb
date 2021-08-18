# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'

hashi_oriental = { name: 'Hashi Oriental', address: 'Av. Jamel', phone_number: '62 9999-9999', category: 'japonese' }
paris_rest = { name: 'Paris Restaurant', address: 'Paulista', phone_number: '11 9999-9999', category: 'french' }
spoleto = { name: 'Spoleto', address: 'Av. Flamboyant', phone_number: '62 9999-8888', category: 'italian' }
china_in_box = { name: 'China In Box', address: 'Rua C-222', phone_number: '62 9999-7777', category: 'chinese' }
domus = { name: 'Domus Leuven', address: 'Av. T-63', phone_number: '62 9999-6666', category: 'belgian' }

[hashi_oriental, paris_rest, spoleto, china_in_box, domus].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
