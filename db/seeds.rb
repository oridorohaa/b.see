require "open-uri"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.destroy_all

user = User.create(username: 'Joseph', email: 'joseph@email.com', password: '123456')

BikeRack.destroy_all

file = URI.open('https://res.cloudinary.com/dsfuck1dv/image/upload/v1671119853/racks/U_inver_mex_endj2e.png')

rack = BikeRack.new(address: "Adolfo Prieto 303, código 2, Col del Valle Centro, Benito Juárez, 03103 Ciudad de México, CDMX",
                    description: "Tres biciestacionamientos tipo cuadro",
                    latitude: 19.39550,
                    longitude: -99.16681,
                    user: user)
rack.photos.attach(io: file, filename: "biciestacionamineto", content_type: "images/jpg")
rack.save!

file2 = URI.open('https://res.cloudinary.com/dsfuck1dv/image/upload/v1671119853/racks/U_inver_mex_endj2e.png')

rack = BikeRack.new(address: "Amsterdam 244, Hipódromo, Cuauhtémoc, 06100 Ciudad de México, CDMX",
                    description: "Un biciestacionamiento tipo U invertidad",
                    latitude: 19.41125,
                    longitude: -99.16801,
                    user: user)
rack.photos.attach(io: file2, filename: "biciestacionamineto1", content_type: "images/jpg")
rack.save!

file3 = URI.open('https://res.cloudinary.com/dsfuck1dv/image/upload/v1671119853/racks/U_inver_mex_endj2e.png')

rack = BikeRack.new(address: "C. Amberes 6, Juárez, Cuauhtémoc, 06600 Ciudad de México, CDMX",
                    description: "Cinco biciestacionamientos tipo U invertidad",
                    latitude: 19.42732,
                    longitude: -99.16599,
                    user: user)
rack.photos.attach(io: file3, filename: "biciestacionamineto2", content_type: "images/jpg")
rack.save!

file4 = URI.open('https://res.cloudinary.com/dsfuck1dv/image/upload/v1671119853/racks/U_inver_mex_endj2e.png')

rack = BikeRack.new(address: "C. Liverpool 34, Juárez, Cuauhtémoc, 06600 Juárez, CDMX",
                    description: "Cuatro biciestacionamientos tipo U invertidad",
                    latitude: 19.42746,
                    longitude: -99.15753,
                    user: user)
rack.photos.attach(io: file4, filename: "biciestacionamineto4", content_type: "images/jpg")
rack.save!

file5 = URI.open('https://res.cloudinary.com/dsfuck1dv/image/upload/v1671119853/racks/U_inver_mex_endj2e.png')

rack = BikeRack.new(address: "Cda. Ernesto Pugibet 17, Colonia Centro, Centro, Cuauhtémoc, 06000 Ciudad de México, CDMX",
                    description: "Tres biciestacionamientos tipo U invertidad",
                    latitude: 19.43007,
                    longitude: -99.14401,
                    user: user)
rack.photos.attach(io: file5, filename: "biciestacionamineto5", content_type: "images/jpg")
rack.save!

file6 = URI.open('https://res.cloudinary.com/dsfuck1dv/image/upload/v1671119853/racks/U_inver_mex_endj2e.png')

rack = BikeRack.new(address: "Revillagigedo 20, Colonia Centro, Centro, Cuauhtémoc, 06050 Ciudad de México, CDMX",
                    description: "Tres biciestacionamiento tipo U invertidad",
                    latitude: 19.43371,
                    longitude: -99.14594,
                    user: user)

rack.photos.attach(io: file6, filename: "biciestacionamineto6", content_type: "images/jpg")
rack.save!

file7 = URI.open('app/assets/images/bike_rack_auto.jpg')

rack = BikeRack.new(address: "Calle Julio Verne 233, Polanco, Polanco IV Secc, Miguel Hidalgo, 11550 Ciudad de México, CDMX",
                    description: "biciestacionamiento tipo Auto",
                    latitude: 19.42956,
                    longitude: -99.19691,
                    user: user)

rack.photos.attach(io: file7, filename: "biciestacionamineto7", content_type: "images/jpg")
rack.save!

file8 = URI.open('https://res.cloudinary.com/dsfuck1dv/image/upload/v1671119853/racks/U_inver_mex_endj2e.png')

rack = BikeRack.new(address: "Parroquia 517, Col del Valle Sur, Benito Juárez, 03100 Ciudad de México, CDMX",
                    description: "Cinco biciestacionamientos tipo U invertidad",
                    latitude: 19.37031,
                    longitude: -99.17215,
                    user: user)

rack.photos.attach(io: file8, filename: "biciestacionamineto8", content_type: "images/jpg")
rack.save!

file9 = URI.open('https://res.cloudinary.com/dsfuck1dv/image/upload/v1671119853/racks/U_inver_mex_endj2e.png')

rack = BikeRack.new(address: "Torres Adalid 1359, Narvarte Poniente, Benito Juárez, 03020 Ciudad de México, CDMX",
                    description: "Cinco biciestacionamientos tipo U invertidad",
                    latitude: 19.38957,
                    longitude: -99.15767,
                    user: user)

rack.photos.attach(io: file9, filename: "biciestacionamineto9", content_type: "images/jpg")
rack.save!

file10 = URI.open('https://res.cloudinary.com/dsfuck1dv/image/upload/v1671119853/racks/U_inver_mex_endj2e.png')

rack = BikeRack.new(address: "Pedro Romero de Terreros 1102, Narvarte Poniente, Benito Juárez, 03020 Ciudad de México, CDMX",
                    description: "Cinco biciestacionamientos tipo U invertidad",
                    latitude: 19.39431,
                    longitude: -99.15960,
                    user: user)

rack.photos.attach(io: file10, filename: "biciestacionamineto10", content_type: "images/jpg")
rack.save!

file11 = URI.open('https://res.cloudinary.com/dsfuck1dv/image/upload/v1671119846/racks/bike_rack_u_ebhov1.png')

rack = BikeRack.new(address: "C. Artículo 123 123, Colonia Centro, Centro, Cuauhtémoc, 06000 Ciudad de México, CDMX",
                    description: "Cuatro biciestacionamientos tipo U invertida",
                    latitude: 19.43437,
                    longitude: -99.14957,
                    user: user)
rack.photos.attach(io: file11, filename: "biciestacionamineto11", content_type: "images/jpg")
rack.save!

file12 = URI.open('https://res.cloudinary.com/dsfuck1dv/image/upload/v1671119846/racks/bike_rack_u_ebhov1.png')

rack = BikeRack.new(address: "Serapio Rendon 76, San Rafael, Cuauhtémoc, 06470 Ciudad de México, CDMX",
                    description: "Cuatro biciestacionamientos tipo U invertida",
                    latitude: 19.43704,
                    longitude: -99.15956,
                    user: user)
rack.photos.attach(io: file12, filename: "biciestacionamineto12", content_type: "images/jpg")
rack.save!

file13 = URI.open('app/assets/images/bike_rack_auto.jpg')

rack = BikeRack.new(address: "Euler 152, Polanco, Polanco V Secc, Miguel Hidalgo, 11550 Ciudad de México, CDMX",
                    description: "biciestacionamiento tipo Auto",
                    latitude: 19.43311,
                    longitude: -99.18320,
                    user: user)
rack.photos.attach(io: file13, filename: "biciestacionamineto13", content_type: "images/jpg")
rack.save!

file14 = URI.open('https://res.cloudinary.com/dsfuck1dv/image/upload/v1671119846/racks/bike_rack_u_ebhov1.png')

rack = BikeRack.new(address: "Parroquia 179, Actipan, Benito Juárez, 03230 Ciudad de México, CDMX",
                    description: "Cinco biciestacionamientos tipo U invertida",
                    latitude: 19.372081685463268,
                    longitude: -99.1783359316581,
                    user: user)
rack.photos.attach(io: file14, filename: "biciestacionamineto14", content_type: "images/jpg")
rack.save!

file15 = URI.open('https://res.cloudinary.com/dsfuck1dv/image/upload/v1671119846/racks/bike_rack_u_ebhov1.png')

rack = BikeRack.new(address: "Orizaba 99, Roma Nte., Cuauhtémoc, 06700 Ciudad de México, CDMX",
                    description: "biciestacionamiento tipo u invertida",
                    latitude: 19.419818339932245,
                    longitude: -99.16016087413234,
                    user: user)
rack.photos.attach(io: file15, filename: "biciestacionamineto15", content_type: "images/jpg")
rack.save!


file16 = URI.open('https://res.cloudinary.com/dsfuck1dv/image/upload/v1671202973/racks/bicies_tipo_x_rgbtx1.png')

rack = BikeRack.new(address: "C. Bajío 350, código 2, Roma Sur, Cuauhtémoc, 06760 Ciudad de México, CDMX",
                    description: "biciestacionamiento tipo X",
                    latitude: 19.403646746626848,
                    longitude:  -99.16928740799037,
                    user: user)
rack.photos.attach(io: file16, filename: "biciestacionamineto16", content_type: "images/jpg")
rack.save!

file17 = URI.open('https://res.cloudinary.com/dsfuck1dv/image/upload/v1671119846/racks/bike_rack_u_ebhov1.png')

rack = BikeRack.new(address: "Av. Paseo de la Reforma 199, Col. Renacimiento, Cuauhtémoc, 06500 Ciudad de México, CDMX",
                    description: "biciestacionamiento tipo U invertida",
                    latitude: 19.431534852821184,
                    longitude: -99.16173647259465,
                    user: user)
rack.photos.attach(io: file17, filename: "biciestacionamineto17", content_type: "images/jpg")
rack.save!

file18 = URI.open('https://res.cloudinary.com/dsfuck1dv/image/upload/v1671119846/racks/bike_rack_u_ebhov1.png')

rack = BikeRack.new(address: "Av. Paseo de la Reforma 175, Col. Renacimiento, Cuauhtémoc, 06500 Ciudad de México, CDMX",
                    description: "biciestacionamiento tipo U invertida",
                    latitude: 19.43194761704681,
                    longitude: -99.16075065359571,
                    user: user)
rack.photos.attach(io: file18, filename: "biciestacionamineto18", content_type: "images/jpg")
rack.save!

file19 = URI.open('https://res.cloudinary.com/dsfuck1dv/image/upload/v1671119846/racks/bike_rack_u_ebhov1.png')

rack = BikeRack.new(address: "C. Río Lerma 63, Cuauhtémoc, 06500 Ciudad de México, CDMX",
                    description: "biciestacionamiento tipo U invertida",
                    latitude: 19.431387050759646,
                    longitude: -99.16495887192086,
                    user: user)
rack.photos.attach(io: file19, filename: "biciestacionamineto19", content_type: "images/jpg")
rack.save!


file20 = URI.open('https://res.cloudinary.com/dsfuck1dv/image/upload/v1671202995/racks/Bici_tipo_bici_ruhnuh.png')

rack = BikeRack.new(address: "Frontera 122, Roma Nte., Cuauhtémoc, 06700 Ciudad de México, CDMX",
                    description: "biciestacionamiento tipo bicicleta",
                    latitude: 19.41947063828734,
                    longitude: -99.15559771463155,
                    user: user)
rack.photos.attach(io: file20, filename: "biciestacionamineto20", content_type: "images/jpg")
rack.save!

Shop.destroy_all

# file11 = URI.open(File.join(Rails.root,'app/assets/images/iloveimg-resized/Crankset.jpg'))
file1 = URI.open('https://res.cloudinary.com/dsfuck1dv/image/upload/v1671203631/Crankset2_ttyqjk.png')

shop = Shop.new(name: "Crankset Bicycle Shop (Trek Juárez)",
                address: "Londres 40, Juárez, Cuauhtémoc, 06600 Ciudad de México, CDMX",
                hours: "Monday to Friday 10:30AM-7PM Saturday 10:30AM-6PM",
                phone_number: "+525559414753",
                description: "Delivery In-store pick-up In-store shopping Same-day delivery",
                latitude: 19.42744,
                longitude: -99.15946,
                user: user)
shop.photos.attach(io: file1, filename: "shop1", content_type: "images/jpg")
shop.save!

# file12 = URI.open(File.join(Rails.root,'app/assets/images/bike_rack_auto.jpg'))
file2 = URI.open('https://res.cloudinary.com/dsfuck1dv/image/upload/v1670948062/People_for_Bikes_pcsd7m.jpg')

shop = Shop.new(name: "People for Bikes",
                address: "Zacatecas 55, Roma Nte., Cuauhtémoc, 06700 Ciudad de México, CDMX",
                hours: "Monday to Saturday 10AM-8PM Sunday 10AM-5PM",
                phone_number: "+525552641457",
                description: "Delivery In-store pick-up In-store shopping Same-day delivery",
                website: "http://pfb.com.mx/",
                latitude: 19.41670,
                longitude: -99.15700,
                user: user)
shop.photos.attach(io: file2, filename: "shop2", content_type: "images/jpg")
shop.save!

# file13 = URI.open(File.join(Rails.root,'app/assets/images/bike_rack_auto.jpg'))
file3 = URI.open('https://res.cloudinary.com/dsfuck1dv/image/upload/v1671203759/chop_chop_2_rrbrea.png')

shop = Shop.new(name: "Chop Chop Bikes",
                address: "Amsterdam 282, Colonia Condesa, Cuauhtémoc, 06100 Ciudad de México, CDMX",
                hours: "Monday to Sunday 11AM-8PM",
                phone_number: "+525519525376",
                description: "In-store pick-up In-store shopping Free Wifi",
                website: "http://www.chopchopbikes.com/",
                latitude: 19.41297,
                longitude: -99.16746,
                user: user)
shop.photos.attach(io: file3, filename: "shop3", content_type: "images/jpg")
shop.save!

# file14 = URI.open(File.join(Rails.root,'app/assets/images/bike_rack_auto.jpg'))
file4 = URI.open('https://res.cloudinary.com/dsfuck1dv/image/upload/v1670948061/Bikedomonium_zd059n.jpg')

shop = Shop.new(name: "Bikedemonium Workshop",
                address: "C. Villahermosa 29, Colonia Condesa, Cuauhtémoc, 06100 Ciudad de México, CDMX",
                hours: "Monday to Saturday 11:30AM-8:30PM Sunday Closed",
                phone_number: "+525520690448",
                description: "Bicycle repair shop",
                website: "http://instagram.com/bikedemoniumworkshop",
                latitude: 19.40499,
                longitude: -99.16987,
                user: user)
shop.photos.attach(io: file4, filename: "shop4", content_type: "images/jpg")
shop.save!

# file15 = URI.open(File.join(Rails.root,'app/assets/images/bike_rack_auto.jpg'))
file5 = URI.open('https://res.cloudinary.com/dsfuck1dv/image/upload/v1670948062/Pedal_and_Crank_bike_shop_mxo41f.jpg')

shop = Shop.new(name: "Pedal and Crank Bike Shop",
                address: "Gobernador José María Tornel 44, San Miguel Chapultepec I Secc, Miguel Hidalgo, 11850 Ciudad de México, CDMX",
                hours: "Tuesday 9AM-7PM Monday Closed",
                phone_number: "+525562736707",
                description: "Delivery In-store pick-up In-store shopping Same-day delivery FreeWifi Debit cards NFC mobile payments",
                website: "None",
                latitude: 19.41265,
                longitude: -99.18469,
                user: user)
shop.photos.attach(io: file5, filename: "shop5", content_type: "images/jpg")
shop.save!

# file16 = URI.open(File.join(Rails.root,'app/assets/images/bike_rack_auto.jpg'))
file6 = URI.open('https://res.cloudinary.com/dsfuck1dv/image/upload/v1670948062/Bicimaniacos_tht7vt.jpg')

shop = Shop.new(name: "BICIMANIACOS BIKE STORE",
                address: "Cumbres de Maltrata 160, Narvarte Poniente, Benito Juárez, 03020 Ciudad de México, CDMX",
                hours: "Monday to Saturday 10AM-8PM Sunday Closed",
                phone_number: "+525555364651",
                description: "Delivery In-store pick-up In-store shopping Same-day delivery Gender-neutral toilets Free WiFi",
                website: "https://www.facebook.com/bicimaniacos.bikestore/",
                latitude: 19.39548,
                longitude: -99.15480,
                user: user)
shop.photos.attach(io: file6, filename: "shop6", content_type: "images/jpg")
shop.save!

# file17 = URI.open(File.join(Rails.root,'app/assets/images/bike_rack_auto.jpg'))
file7 = URI.open('https://res.cloudinary.com/dsfuck1dv/image/upload/v1670948061/LBU_Bike_store_jxwqez.jpg')

shop = Shop.new(name: "LBU Bike Store Patriotismo",
                address: "Av. Patriotismo 384, San Pedro de los Pinos, Benito Juárez, 03800 Ciudad de México, CDMX",
                hours: "Monday to Saturday 11AM-6PM Sunday 10AM-3PM",
                phone_number: "+525552711717",
                description: "In-store shopping In-store pick-up Delivery Same-day delivery Wheelchair-accessible",
                website: "http://www.lbushop.mx/",
                latitude: 19.39058,
                longitude: -99.18256,
                user: user)
shop.photos.attach(io: file7, filename: "shop7", content_type: "images/jpg")
shop.save!

# file18 = URI.open(File.join(Rails.root,'app/assets/images/bike_rack_auto.jpg'))
file18 = URI.open('https://res.cloudinary.com/dsfuck1dv/image/upload/v1670948061/Group_BCL_jhqaa6.jpg')

shop = Shop.new(name: "Group Bcl Imports",
                address: "C. Carmen 97, Nativitas, Benito Juárez, 03500 Ciudad de México, CDMX",
                hours: "Monday to Saturday 11AM-6PM Sunday 10AM-3PM",
                phone_number: "Monday to Friday 10AM-6:30PM Saturday 10AM-2:30PM Sunday Closed",
                description: "In-store shopping In-store pick-up Delivery Wheelchair accessible",
                website: "None",
                latitude: 19.38093,
                longitude: -99.13548,
                user: user)
shop.photos.attach(io: file18, filename: "shop8", content_type: "images/jpg")
shop.save!

# file19 = URI.open(File.join(Rails.root,'app/assets/images/bike_rack_auto.jpg'))
file9 = URI.open('https://res.cloudinary.com/dsfuck1dv/image/upload/v1670948061/Bike_Urban_kem9wh.jpg')

shop = Shop.new(name: "Bike Urban Reform",
                address: "Av. Morelos 70, Juárez, Cuauhtémoc, 06600 Ciudad de México, CDMX",
                hours: "Monday to Saturday 11AM-6PM Sunday 10AM-3PM",
                phone_number: "+525555350240",
                description: "Identifies as women-owned Gender-neutral toilets LGBTQ+friendly Transgender safe space",
                website: "http://www.lbushop.mx/",
                latitude: 19.43277,
                longitude: -99.15174,
                user: user,)
shop.photos.attach(io: file9, filename: "shop9", content_type: "images/jpg")
shop.save!

# file20 = URI.open(File.join(Rails.root,'app/assets/images/bike_rack_auto.jpg'))
file10 = URI.open('https://res.cloudinary.com/dsfuck1dv/image/upload/v1670948062/Hippixi_Bikes_agqylr.jpg')

shop = Shop.new(name: "Hippixi Bikes",
                address: "Lamartine 607, Polanco, Bosque de Chapultepec I Secc, Miguel Hidalgo, 11580 Ciudad de México, CDMX",
                hours: "Monday to Thursday 11AM-7PM Friday Closed Saturday and Sunday 9AM-6PM",
                phone_number: "+525585006129",
                description: "",
                website: "In-store pick-up Delivery Same-day delivery Free ",
                latitude: 19.42918,
                longitude: -99.18985,
                user: user)
shop.photos.attach(io: file10, filename: "shop10", content_type: "images/jpg")
shop.save!
