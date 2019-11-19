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
user1.save!

user2 = User.new(first_name: 'Mara', last_name: 'Musterfrau', email: 'mara.musterfrau@example.com', password: '123456', password_confirmation: '123456', )
user2.save!

user3 = User.new(first_name: 'Jan', last_name: 'Pillemann Otze', email: 'jan.pillemannotze@example.com', password: '123456', password_confirmation: '123456', )
user3.save!


puts 'Creating all tools'
tool1 = Tool.new(name: 'Electric lawnmower', long:'53.5511° N', lat:'9.9937° E', date: '[[01/11/2019, 30/11/2019], [10/12/2019, 15/12/2019]', price: 25.3, category: 'Lawnmowers', brand: 'Husqvarna', description: 'Electric lawnmower with large capacity grass container.', user: User.find_by(first_name: 'Peter', last_name: 'Lustig'))
tool1.remote_photo_url = 'https://images.unsplash.com/photo-1564944817179-f03792efda53?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80'
tool1.save!

tool2 = Tool.new(name: 'Stihl combustion chainsaw', long:'52.5200° N', lat:'13.4050° E', date: '[[18/11/2019, 25/11/2019], [25/12/2019, 30/12/2019]', price: 20.75, category: 'Chainsaws', brand: 'Stihl', description: 'Combustion chainsaw with 40cm blade for branches and small to medium trees.', user: User.find_by(first_name: 'Mara', last_name: 'Musterfrau'))
tool2.remote_photo_url = 'https://images.unsplash.com/photo-1550091345-8c561a255eca?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1052&q=80'
tool2.save!

tool3 = Tool.new(name: 'Electric leaf blower', long:'52.5200° N', lat:'13.4050° E', date: '[[20/11/2019, 23/11/2019], [10/12/2019, 14/12/2019]', price: 18.95, category: 'Leaf blowers', brand: 'Husqvarna', description: 'Extremely quiet and reliable leaf blower for gardening work aroun the house.', user: User.find_by(first_name: 'Jan', last_name: 'Pillemann Otze'))
tool3.remote_photo_url = 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.homegardencyprus.com%2Fimages%2Fstories%2Fvirtuemart%2Fproduct%2F1315.jpg&f=1&nofb=1'
tool3.save!

tool4 = Tool.new(name: 'Rake', long:'53.4675° N', lat:'9.6916° E', date: '[[21/11/2019, 22/11/2019], [11/12/2019, 14/12/2019]', price: 5.5, category: 'Rakes', brand: 'Gardena', description: 'Flexible yet sturdy', user: User.find_by(first_name: 'Jan', last_name: 'Pillemann Otze'))
tool4.remote_photo_url = 'https://nicollzg.files.wordpress.com/2016/06/rake.jpg?w=1200'
tool4.save!

tool5 = Tool.new(name: '4-Cycle Tiller', long:'50.2133° N', lat:'6.9738° E', date: '[[01/11/2019, 28/11/2019], [20/12/2019, 23/12/2019]', price: 40, category: 'Tillers', brand: 'Mantis', description: 'Extremely powerful and loud', user: User.find_by(first_name: 'Peter', last_name: 'Lustig'))
tool5.remote_photo_url = 'https://mantis.com/wp-content/uploads/2016/05/mantis-2-cycle-tiller-with-faststart-01.jpg'
tool5.save!

tool6 = Tool.new(name: '50 ft. Garden Hose', long:'50.2133° N', lat:'6.9738° E', date: '[[15/11/2019, 20/11/2019], [01/01/2020, 18/01/2020]', price: 10.5, category: 'Hoses', brand: 'Gardena', description: 'Comes with solid metal adapters', user: User.find_by(first_name: 'Mara', last_name: 'Musterfrau'))
tool6.remote_photo_url = 'https://duckduckgo.com/?q=gardening+hose&t=hk&iar=images&iax=images&ia=images&iai=https%3A%2F%2Fwww.wheeliebinstoragedirect.co.uk%2Fwp-content%2Fuploads%2F2018%2F05%2Fbest-garden-hoses.jpg'
tool6.save!

tool7 = Tool.new(name: 'Tumbler Composter', long:'53.5511° N', lat:'9.9937° E', date: '[[28/11/2019, 30/01/2020], [15/01/2020, 19/01/2020]', price: 11.95, category: 'Composters', brand: 'Lifetime', description: 'Reliable and safe', user: User.find_by(first_name: 'Peter', last_name: 'Lustig'))
tool7.remote_photo_url = 'https://duckduckgo.com/?q=Tumbler+composter&t=hk&iar=images&iax=images&ia=images&iai=https%3A%2F%2Fwww.competitiveedgeproducts.com%2Fassets%2Fimages%2F60130-02.jpg'
tool7.save!

tool8 = Tool.new(name: 'Truper Tru Pro Hoe', long:'52.5200° N', lat:'13.4050° E', date: '[[19/11/2019, 02/01/2020], [13/01/2020, 20/01/2020]', price: 6.4, category: 'Hoes', brand: 'Trumper', description: 'Loyal hoe', user: User.find_by(first_name: 'Mara', last_name: 'Musterfrau'))
tool8.remote_photo_url = 'https://duckduckgo.com/?q=gardening+hoe&t=hk&iar=images&iax=images&ia=images&iai=https%3A%2F%2Fwww.gardeningknowhow.com%2Fwp-content%2Fuploads%2F2017%2F05%2Fhoe.jpg'
tool8.save!

tool9 = Tool.new(name: 'Dual-Wheel Wheelbarrow', long:'48.1351° N', lat:'11.5820° E', date: '[[25/11/2019, 06/01/2020], [19/01/2020, 23/01/2020]', price: 6.4, category: 'Wheelbarrows', brand: 'Scenic road', description: 'This wheelbarrow is very stable and sturdy!!', user: User.find_by(first_name: 'Mara', last_name: 'Musterfrau'))
tool9.remote_photo_url = 'https://duckduckgo.com/?q=two+weeeled+wheelbarrow&t=hk&iar=images&iax=images&ia=images&iai=https%3A%2F%2Fbuyinghack.com%2Fwp-content%2Fuploads%2F2018%2F01%2F2-WHEEL-WHEELBARROWS.jpg'
tool9.save!

tool10 = Tool.new(name: 'Lopper 3000', long:'48.1351° N', lat:'11.5820° E', date: '[[25/11/2019, 06/01/2020], [19/01/2020, 23/01/2020]', price: 6.4, category: 'Loppers', brand: 'Black+Decker', description: 'Cuts branches even when merged with master', user: User.find_by(first_name: 'Jan', last_name: 'Pillemann Otze'))
tool10.remote_photo_url = 'https://duckduckgo.com/?q=loppers&t=hk&iar=images&iax=images&ia=images&iai=https%3A%2F%2Fvdxl.im%2Fwoger_image%2F411710%2Fgallery_im%2Fchannel%2Fwebshop%2Faction%2Fhd%2Fdelta%2F3%2Fimage.jpg'
tool10.save!

puts 'Creating all bookings'
Booking.create!(confirmation: true, comment: 'I might commit a chainsaw massacre', dates: '[20/11/2019, 20/11/2019]', pickup_time: Time.parse('11:00'), user: user2, tool: tool2)
Booking.create!(confirmation: true, comment: 'Want to clean my lawn and I`m happy to have found your offer!', dates: '[20/11/2019, 21/11/2019]', pickup_time: Time.parse('13:00'), user: user3, tool: tool3)
Booking.create!(confirmation: true, comment: 'I am looking forward to using your professional lawnmower!!', dates: '[10/12/2019, 10/12/2019]', pickup_time: Time.parse('17:00'), user: user1, tool: tool1)
Booking.create!(confirmation: true, comment: 'Nice lawnmower.', dates: '[[11/12/2019, 12/12/2019]', pickup_time: Time.parse('17:00'), user: user1, tool: tool1)
Booking.create!(confirmation: true, comment: 'Want to cut down a tree, blocking my view of the river.', dates: '[03/12/2019, 05/12/2019]', pickup_time: Time.parse('17:00'), user: user3, tool: tool2)
Booking.create!(confirmation: true, comment: 'Need it to cut the lawn of my neighbour because I ran over his cat :(', dates: '[13/12/2019, 14/12/2019]', pickup_time: Time.parse('10:00'), user: user2, tool: tool1)
puts 'Done!!'




















