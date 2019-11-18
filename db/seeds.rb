# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Destroying all bookings'
Booking.destroy_all

puts 'Destroying all tools'
Tool.destroy_all

puts 'Destroying all users'
User.destroy_all


puts 'Creating all users'
user1 = User.new(first_name: 'Peter', last_name: 'Lustig', email: 'peter.lustig@example.com', password: '123456', password_confirmation: '123456', )
user1.save

user2 = User.new(first_name: 'Mara', last_name: 'Musterfrau', email: 'mara.musterfrau@example.com', password: '123456', password_confirmation: '123456', )
user2.save

user3 = User.new(first_name: 'Jan', last_name: 'Pillemann Otze', email: 'jan.pillemannotze@example.com', password: '123456', password_confirmation: '123456', )
user3.save


puts 'Creating all tools'
tool1 = Tool.new(name: 'Electric lawnmower', long:'53.5511° N', lat:'9.9937° E', date: '[[01/11/2019, 30/11/2019], [10/12/2019, 15/12/2019]', price: 25.3, category: 'Powered gardening utensils', sub_category: 'Lawnmowers', description: 'Electric lawnmower with large capacity grass container.', user: User.find_by(first_name: 'Peter', last_name: 'Lustig'))
tool1.save

tool2 = Tool.new(name: 'Stil combustion chainsaw', long:'52.5200° N', lat:'13.4050° E', date: '[[18/11/2019, 25/11/2019], [25/12/2019, 30/12/2019]', price: 20.75, category: 'Powered gardening utensils', sub_category: 'Chainsaws', description: 'Combustion chainsaw with 40cm blade for branches and small to medium trees.', user: User.find_by(first_name: 'Mara', last_name: 'Musterfrau'))
tool2.save

tool3 = Tool.new(name: 'Electric leaf blower', long:'52.5200° N', lat:'13.4050° E', date: '[[20/11/2019, 23/11/2019], [10/12/2019, 14/12/2019]', price: 18.95, category: 'Powered gardening utensils', sub_category: 'Leaf blower', description: 'Extremely quiet and reliable leaf blower for gardening work aroun the house.', user: User.find_by(first_name: 'Jan', last_name: 'Pillemann Otze'))
tool3.save


puts 'Creating all bookings'
Booking.create!(confirmation: true, comment: 'I might commit a chainsaw massacre', start_date: Date.parse('23/12/2019'), end_date: Date.parse('25/12/2019'), pickup_time: Time.parse('11:00'), user: User.find_by(first_name: 'Mara', last_name: 'Musterfrau'), tool: Tool.find_by(name: 'Stil combustion chainsaw'))

Booking.create!(confirmation: true, comment: 'Want to clean my lawn and I`m happy to have found your offer!', start_date: Date.parse('17/11/2019'), end_date: Date.parse('23/11/2019'), pickup_time: Time.parse('13:00'), user: User.find_by(first_name: 'Jan', last_name: 'Pillemann Otze'), tool: Tool.find_by(name: 'Electric leaf blower'))

Booking.create!(confirmation: true, comment: 'I am looking forward to using your professional lawnmower!!', start_date: Date.parse('18/11/2019'), end_date: Date.parse('28/11/2019'), pickup_time: Time.parse('17:00'), user: User.find_by(first_name: 'Peter', last_name: 'Lustig'), tool: Tool.find_by(name: 'Electric lawnmower'))

Booking.create!(confirmation: true, comment: 'Nice lawnmower.', start_date: Date.parse('19/11/2019'), end_date: Date.parse('28/11/2019'), pickup_time: Time.parse('17:00'), user: User.find_by(first_name: 'Peter', last_name: 'Lustig'), tool: Tool.find_by(name: 'Electric lawnmower'))

Booking.create!(confirmation: true, comment: 'Want to cut down a tree, blocking my view of the river.', start_date: Date.parse('19/11/2019'), end_date: Date.parse('28/11/2019'), pickup_time: Time.parse('17:00'), user: User.find_by(first_name: 'Jan', last_name: 'Pillemann Otze'), tool: Tool.find_by(name: 'Stil combustion chainsaw'))

Booking.create!(confirmation: true, comment: 'Need it to cut the lawn of my neighbour because I ran over his cat :(', start_date: Date.parse('2/11/2019'), end_date: Date.parse('3/11/2019'), pickup_time: Time.parse('10:00'), user: User.find_by(first_name: 'Mara', last_name: 'Musterfrau'), tool: Tool.find_by(name: 'Electric lawnmower'))

puts 'Done!!'
