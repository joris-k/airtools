# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
puts 'Destroying all notifications'
Notification.destroy_all

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

user4 = User.new(first_name: 'Fred', last_name: 'Martin', email: 'fred@example.com', password: '123456', password_confirmation: '123456', )
user4.save!


puts 'Creating all tools'
tool1 = Tool.new(name: 'Electric lawnmower', address: 'Wilhelms Allee 13, Hamburg', date: '[01-11-2019, 30-11-2019], [10-12-2019, 15-12-2019]', price: 35.3, category: 'Lawn Mower', brand: 'Husqvarna', description: 'Electric lawnmower with large capacity grass container.', user: User.find_by(first_name: 'Mara', last_name: 'Musterfrau'))
tool1.remote_photo_url = 'https://images.unsplash.com/photo-1564944817179-f03792efda53?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80'
tool1.save!

tool2 = Tool.new(name: 'Stihl combustion chainsaw', address: 'Alte Jakobstraße 124-128, 10969 Berlin', date: '[18-11-2019, 25-11-2019], [25-12-2019, 30-12-2019]', price: 20.75, category: 'Chainsaw', brand: 'Stihl', description: 'Combustion chainsaw with 40cm blade for branches and small to medium trees.', user: User.find_by(first_name: 'Jan', last_name: 'Pillemann Otze'))
tool2.remote_photo_url = 'https://images.unsplash.com/photo-1550091345-8c561a255eca?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1052&q=80'
tool2.save!

tool3 = Tool.new(name: 'Electric leaf blower', address: 'Strelitzer Straße 20, Berlin', date: '[20-11-2019, 23-11-2019], [10-12-2019, 14-12-2019]', price: 18.95, category: 'Leaf Blower', brand: 'Husqvarna', description: 'Extremely quiet and reliable leaf blower for gardening work aroun the house.', user: User.find_by(first_name: 'Peter', last_name: 'Lustig'))
tool3.remote_photo_url = 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.homegardencyprus.com%2Fimages%2Fstories%2Fvirtuemart%2Fproduct%2F1315.jpg&f=1&nofb=1'
tool3.save!

tool12 = Tool.new(name: 'Petrol Hover Mower', address: 'Paderborner Strasse 56', date: '[01-12-2019, 01-01-2020], [10-01-2020, 23-04-2020]', price: 20.0, category: 'Lawn Mower', brand: 'Foxgloves', description: 'Classic hover mower with robust Honda GCV motor and large working width Petrol hover mower Weight 15 kg - Capacity: 160 ccm, Cutting width: 50.5 cm, Metal blade', user: User.find_by(first_name: 'Jan'))
tool12.remote_photo_url = 'https://www.picclickimg.com/d/l400/pict/202728103222_/Allen-Petrol-Hover-Flymo-Lawnmower-Honda-Gcv160-Engine.jpg'
tool12.save!

tool4 = Tool.new(name: 'Rake', address: 'Luebeckertordamm 30', date: '[21-11-2019, 22-11-2019], [11-12-2019, 14-12-2019]', price: 5.5, category: 'Rake', brand: 'Gardena', description: 'Flexible yet sturdy', user: User.find_by(first_name: 'Jan', last_name: 'Pillemann Otze'))
tool4.remote_photo_url = 'https://nicollzg.files.wordpress.com/2016/06/rake.jpg?w=1200'
tool4.save!

tool5 = Tool.new(name: '4-Cycle Tiller', address: 'Weidenweg 25, Berlin', date: '[01-11-2019, 28-11-2019], [20-12-2019, 23-12-2019]', price: 40, category: 'Tiller', brand: 'Mantis', description: 'Extremely powerful and loud', user: User.find_by(first_name: 'Peter', last_name: 'Lustig'))
tool5.remote_photo_url = 'https://mantis.com/wp-content/uploads/2016/05/mantis-2-cycle-tiller-with-faststart-01.jpg'
tool5.save!

tool6 = Tool.new(name: '50 ft. Garden Hose', address: 'Hans-Grade-Allee 78', date: '[15-11-2019, 20-11-2019], [01-01-2020, 18-01-2020]', price: 10.5, category: 'Hose', brand: 'Gardena', description: 'Comes with solid metal adapters', user: User.find_by(first_name: 'Mara', last_name: 'Musterfrau'))
tool6.remote_photo_url = 'https://www.wheeliebinstoragedirect.co.uk/wp-content/uploads/2018/05/best-garden-hoses.jpg'
tool6.save!

tool7 = Tool.new(name: 'Tumbler Composter', address: 'Stuttgarter Platz 7', date: '[28-11-2019, 30-01-2020], [15-01-2020, 19-01-2020]', price: 11.95, category: 'Composter', brand: 'Lifetime', description: 'Reliable and safe', user: User.find_by(first_name: 'Peter', last_name: 'Lustig'))
tool7.remote_photo_url = 'https://www.competitiveedgeproducts.com/assets/images/60130-02.jpg'
tool7.save!

tool8 = Tool.new(name: 'Truper Tru Pro Hoe', address: 'Scharnweberstrasse 4', date: '[19-11-2019, 02-01-2020], [13-01-2020, 20-01-2020]', price: 6.4, category: 'Hoe', brand: 'Trumper', description: 'Loyal hoe', user: User.find_by(first_name: 'Mara', last_name: 'Musterfrau'))
tool8.remote_photo_url = 'https://q7i2y6d5.stackpathcdn.com/wp-content/uploads/2017/05/hoe.jpg'
tool8.save!

tool15 = Tool.new(name: 'Electric trim Lawn Mower', address: 'Leopoldstraße 19, Berlin', date: '[01-12-2019, 23-12-2019], [10-01-2020, 30-03-2020]', price: 16.5, category: 'Lawn Mower', brand: 'Radius Garden', description: "If you’re looking for a year-round plant that will make your garden stand out, opt for evergreen shrubs. Both colourful and reliable, they are great for hedges, borders and even as standalone features. Popular evergreen shrubs include boxwood, daphne, aucuba and euonymus.", user: User.find_by(first_name: 'Jan'))
tool15.remote_photo_url = 'https://www.idealhomeshow.co.uk/images/2019/02/fd2afbbd7a.png'
tool15.save!

tool9 = Tool.new(name: 'Dual-Wheel Wheelbarrow', address: 'Brandenburgische Straße 54, Berlin', date: '[25-11-2019, 06-01-2020], [19-01-2020, 23-01-2020]', price: 6.4, category: 'Wheelbarrow', brand: 'Scenic road', description: 'This wheelbarrow is very stable and sturdy!!', user: User.find_by(first_name: 'Fred'))
tool9.remote_photo_url = 'https://buyinghack.com/wp-content/uploads/2018/01/2-WHEEL-WHEELBARROWS.jpg'
tool9.save!

tool10 = Tool.new(name: 'Lopper 3000', address: 'Genslerstraße 96, Berlin', date: '[25-11-2019, 06-01-2020], [19-01-2020, 23-01-2020]', price: 6.4, category: 'Lopper', brand: 'Devaon', description: 'Cuts branches even when merged with master', user: User.find_by(first_name: 'Jan', last_name: 'Pillemann Otze'))
tool10.remote_photo_url = 'https://www.gardenlines.co.uk/sites/default/files/dn1115qh_davaon_pro_garden_loppers.jpg'
tool10.save!

tool11 = Tool.new(name: 'Cordless Lawn Mower', address: 'Genslerstraße 20', date: '[25-11-2019, 06-01-2020], [19-01-2020, 23-01-2020]', price: 23.5, category: 'Lawn Mower', brand: 'Einhell', description: 'The GE-CM 43 Li M cordless lawn mower is a high-quality, reliable and extremely powerful tool which cares for larger lawns without being connected to a socket. With the new Power X-Change battery system from Einhell the lawn mower has two powerful 18 V battery packs with 4.0 Ah for long work sesns without any bothersome power cables. For simple, individual adjustment of the cutting height there is a central 6-level cutting height adjustment facility. The GE-CM 43 Li M is equipped with a folding, long handle wh is height-adjustable to three levels. It can therefore be adjusted perfectly to users of all sizes and stored away in minimum space. Each battery has a charge level indicator with three LEDs where you can check the current charge level at a glance. In addition, the battery packs can be used for all the tools in the Power X-Change family. Complete with two high-speed chargers. As a highwheeler, the GE-CM 43 Li M features extra-high rear wheels for easier operation in difficult terrain. Also, large wheels exert less stress on the lawn. The grass box is equipped with a level indicator so that you can see at a glance when it is time to empty the box. The long-lasting sing is made of high-grade, impact-resistant plastic. For easy transportation there is a practical carry-handle. In addition the cuttings can be finely shredded by a mulching kit before they are evenly distributed over the lawn. The GE-CM 43 Li M is recommended for lawns of up to 600 m².', user: User.find_by(first_name: 'Jan'))
tool11.remote_photo_url = 'https://ksassets.timeincuk.net/wp/uploads/sites/56/2018/04/Aldi-Cordless-Lawn-Mower.jpg'
tool11.save!

tool13 = Tool.new(name: 'Propelled Lawn Mower', address: 'Wilhelms Allee 8', date: '[01-01-2020, 01-04-2020], [10-04-2020, 30-05-2020]', price: 18.0, category: 'Lawn Mower', brand: 'GreenStalk Gardening Systems', description: 'Brand new come with battery and charger', user: User.find_by(first_name: 'Mara'))
tool13.remote_photo_url = 'https://cdn.opereviews.com/wp-content/uploads/sites/3/2018/08/EGO-21-Dual-Battery-Mower_5-770x472.jpg'
tool13.save!

tool14 = Tool.new(name: 'Hydrostatic Riding Mower', address: 'Scharnweberstrasse 7', date: '[01-12-2019, 23-12-2019], [10-01-2020, 30-03-2020]', price: 42.0, category: 'Lawn Mower', brand: 'Husqvarna', description: "Husqvarna's riding lawn mowers offer premium performance with quality results. Their compact size makes them easy to maneuver and require less space for storage. Features such as fender-mounted cutting height adjustment, adjustable seat and an ergonomic steering wheel make these tractors simple and comfortable to operate. All tractors feature hydrostatic transmissions for smooth, variable forward and reverse speed. Air induction mowing technology improves airflow within the deck, ensuring a clean, consistent cut every time. For added versatility, all models can be equipped with a range of tow-able accessories and mulch kit for effective lawn fertilization.", user: User.find_by(first_name: 'Mara'))
tool14.remote_photo_url = 'https://commercialmowerreviews.com/wp-content/uploads/2019/07/best-riding-lawn-mowers.jpg'
tool14.save!

tool15 = Tool.new(name: 'Strong chainsaw', address: 'Rudi-Dutschke-Straße 26, Berlin', date: '[01-12-2019, 23-12-2020], [10-01-2020, 30-03-2020]', price: 10.0, category: 'Chainsaw', brand: 'Root Assassin LLC', description: "Leerlaufdrehzahl: 2700 U/min Schalldruckpegel am Ohr der Bedienperson: 103 dB(A) Geräuschemissionsmess.: 112 dB(A) Hubraum: 45", user: User.find_by(first_name: 'Mara'))
tool15.remote_photo_url = 'https://images.unsplash.com/photo-1489992767089-fb6e153d65e1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80'
tool15.save!

tool16 = Tool.new(name: 'Chainsaw for work in the garden', address: 'Mulackstraße 10, Berlin', date: '[01-12-2019, 23-12-2019], [10-01-2020, 30-03-2020]', price: 15.0, category: 'Chainsaw', brand: 'Bond Manufacturing', description: "Designed for safety and comfort, this WORX chainsaw includes a built-in safety chain brake that stops the chain in seconds whenever improper contact is made, protecting you in the event of kickback. Additionally, a rubber over-molded rear handle and ergonomic full-wrap front handle let you work in full control and comfort.", user: User.find_by(first_name: 'Fred'))
tool16.remote_photo_url = 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2b/Stihl_MS_170.JPG/1200px-Stihl_MS_170.JPG'
tool16.save!

tool17 = Tool.new(name: 'Chainsaw for felling trees', address: 'Brandenburger Tor', date: '[01-12-2019, 23-12-2019], [01-01-2020, 20-01-2019]', price: 16.0, category: 'Chainsaw', brand: 'High Caliper Growing', description: "The WORX 16” 3.5 HP 14.5 Amp chainsaw is a cut above the rest. For starters, the exclusive WORX patented tool-free chain replacement and auto-tensioning system eliminates the headaches faced with most other chainsaws – no lumberjack experience necessary to operate this chainsaw! ", user: User.find_by(first_name: 'Jan'))
tool17.remote_photo_url = 'https://images.unsplash.com/photo-1556912743-54b370e8385b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80'
tool17.save!

tool18 = Tool.new(name: 'Brand new Chainsaw', address: 'Unter den Linden 6, Berlin', date: '[01-11-2019, 01-12-2019], [10-01-2020, 30-03-2020]', price: 17.5, category: 'Chainsaw', brand: 'Stihl', description: "STIHL chainsaws combine innovative technology with high power, optimum ergonomic design and low weight. These properties minimize the burden for man and the environment. STIHL supplies chainsaws in a variety of equipment versions and for all purposes, with power ratings from 1.3 kW to 6.4 kW (1.6 HP to 8.7 HP). Exciting insights to the work of professionals with chainsaws in the mountain forest can be found here", user: User.find_by(first_name: 'Jan'))
tool18.remote_photo_url = 'https://images.unsplash.com/photo-1573154590154-00fd5ba63dba?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'
tool18.save!

tool19 = Tool.new(name: 'Stihl Chainsaw', address: 'Friedrichstraße 180, Berlin', date: '[01-11-2019, 27-11-2019], [01-01-2020, 01-02-2020]', price: 20.0, category: 'Chainsaw', brand: 'Stihl', description: "Exciting insights to the work of professionals with chainsaws in the mountain forest can be found here", user: User.find_by(first_name: 'Mara'))
tool19.remote_photo_url = 'https://images.unsplash.com/photo-1515433868209-994b50c7e2f1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80'
tool19.save!

tool19 = Tool.new(name: 'Colorful Chainsaw', address: 'Hegelplatz, Stuttgart', date: '[01-11-2019, 27-11-2019], [01-01-2020, 01-02-2020]', price: 22.0, category: 'Chainsaw', brand: 'Einhell', description: "The WORX 16” 3.5 HP 14.5 Amp chainsaw is a cut above the rest. For starters, the exclusive WORX patented tool-free chain replacement and auto-tensioning system eliminates the headaches faced with most other chainsaws – no lumberjack experience necessary to operate this chainsaw! The auto-tension system includes a single, oversized knob that automatically secures the bar and chain and maintains proper tension while you’re working.", user: User.find_by(first_name: 'Fred'))
tool19.remote_photo_url = 'http://3.bp.blogspot.com/-2HnrqEx-3bQ/T34lCSq1RHI/AAAAAAAADz0/4CrwatksvT4/s1600/P1090907.JPG'
tool19.save!

tool19 = Tool.new(name: 'Strong and powerful Chainsaw', address: 'Bahnhofstraße 20-22, 48143 Münster', date: '[01-11-2019, 27-11-2019], [01-01-2020, 01-02-2020]', price: 15.0, category: 'Chainsaw', brand: 'Mantis', description: "Landscapers & contractors are demanding more cordless alternatives to corded & gas-powered outdoor power equipment. Makita is meeting demand with an expanding line of cordless OPE, including the 18V x2 LXT (36V) Brushless chain saw kit (model XCU03PT1). with zero emissions, lower noise, & considerably less maintenance, the chain saw is a welcome solution for cutting & trimming applications.", user: User.find_by(first_name: 'Jan'))
tool19.remote_photo_url = 'https://blog.gooddayswork.ag/hubfs/Blog_images/chainsaw_safety.jpg#keepProtocol'
tool19.save!

tool19 = Tool.new(name: 'Chainsaw for any purpose', address: 'Riehler Str. 173, 50735 Köln', date: '[01-11-2019, 27-11-2019], [01-01-2020, 01-02-2020]', price: 17.0, category: 'Chainsaw', brand: 'Stihl', description: "Convenience features include a tool-less Chain adjustments, A front hand guard engineered to actuate chain brake When engaged, an electric brake for maximum productivity, & more. Model XCU03PT1 is a kit & includes the chain saw, four fast-charging 18V LXT Lithium-Ion 5 0Ah batteries & an efficient 18V Dual Port Rapid Optimum Charger.", user: User.find_by(first_name: 'Mara'))
tool19.remote_photo_url = 'https://www.stihlusa.com/WebContent/PressReleases/Releases/aug30_stihlms261/ms261_act_004.jpg'
tool19.save!

tool19 = Tool.new(name: 'Simple but powerful Chainsaw', address: 'Friedrichstraße 180, Berlin', date: '[01-11-2019, 27-11-2019], [01-01-2020, 01-02-2020]', price: 22.5, category: 'Chainsaw', brand: 'Corona', description: "WORX 10 cordless chain saw boosts the 20V Power share platform with innovative technology. The patented tool-free auto chain tension system prevents over tightening & keeps optimal chain tension while cutting. Combined with an automatic oiling system with indicator & a compact design allows this saw to be practical in any quick clean up or pruning task.", user: User.find_by(first_name: 'Fred'))
tool19.remote_photo_url = 'https://4.bp.blogspot.com/-d4WtHFbjVyM/WA4htueRt7I/AAAAAAAAPRQ/QpgpbJNkOcg0xmomXy8Z9RUK1VKUxbS-wCLcB/s1600/P1190874.JPG'
tool19.save!

puts 'Creating all bookings'
Booking.create!(comment: 'I might commit a chainsaw massacre', dates: '[20-11-2019, 20-11-2019]', pickup_time: Time.parse('11:00'), user: user2, tool: tool2)
Booking.create!(confirmation: true, comment: 'Want to clean my lawn and I`m happy to have found your offer!', dates: '[20-11-2019, 21-11-2019]', pickup_time: Time.parse('13:00'), user: user3, tool: tool3)
Booking.create!(confirmation: true, comment: 'I am looking forward to using your professional lawnmower!!', dates: '[10-12-2019, 10-12-2019]', pickup_time: Time.parse('17:00'), user: user1, tool: tool9)
Booking.create!(confirmation: false, comment: 'Looking to use the rake in my backyard', dates: '[11-12-2019, 12-12-2019]', pickup_time: Time.parse('17:00'), user: user1, tool: tool4)
Booking.create!(confirmation: true, comment: 'Want to cut down a tree, blocking my view of the river.', dates: '[03-12-2019, 05-12-2019]', pickup_time: Time.parse('17:00'), user: user3, tool: tool2)
Booking.create!(confirmation: true, comment: 'Need it to cut the lawn of my neighbour because I ran over his cat :(', dates: '[13-12-2019, 14-12-2019]', pickup_time: Time.parse('10:00'), user: user2, tool: tool1)
puts 'Done!!'




















