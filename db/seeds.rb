# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# require "json"
# require "open-uri"

# url = "https://img.asmedia.epimg.net/resizer/EDUTHxqWgJ6K…shing.com/diarioas/CZLZLV2EOVNBHCU6MNHPVWPUOE.jpg"

# html_file = URI.open(url).read
# html_doc = Nokogiri::HTML(html_file)


BikeRack.destroy_all

BikeRack.create!(address: "Adolfo Prieto 303, código 2, Col del Valle Centro, Benito Juárez, 03103 Ciudad de México, CDMX",
                 description: "Tres biciestacionamientos tipo cuadro",
                 latitude: 19.39550,
                 longitude: -99.16681)

BikeRack.create!(address: "Amsterdam 244, Hipódromo, Cuauhtémoc, 06100 Ciudad de México, CDMX",
                 description: "Un biciestacionamiento tipo U invertidad",
                 latitude: 19.41125,
                 longitude: -99.16801)

BikeRack.create!(address: "C. Amberes 6, Juárez, Cuauhtémoc, 06600 Ciudad de México, CDMX",
                 description: "Cinco biciestacionamientos tipo U invertidad",
                 latitude: 19.42732,
                 longitude: -99.16599)

BikeRack.create!(address: "C. Liverpool 34, Juárez, Cuauhtémoc, 06600 Juárez, CDMX",
                 description: "Cuatro biciestacionamientos tipo U invertidad",
                 latitude: 19.42746,
                 longitude: -99.15753)

BikeRack.create!(address: "Cda. Ernesto Pugibet 17, Colonia Centro, Centro, Cuauhtémoc, 06000 Ciudad de México, CDMX",
                 description: "Tres biciestacionamientos tipo U invertidad",
                 latitude: 19.43007,
                 longitude: -99.14401)

BikeRack.create!(address: "Revillagigedo 20, Colonia Centro, Centro, Cuauhtémoc, 06050 Ciudad de México, CDMX",
                 description: "Tres biciestacionamiento tipo U invertidad",
                 latitude: 19.43371,
                 longitude: -99.14594)

BikeRack.create!(address: "Calle Julio Verne 233, Polanco, Polanco IV Secc, Miguel Hidalgo, 11550 Ciudad de México, CDMX",
                 description: "biciestacionamiento tipo Auto",
                 latitude: 19.42956,
                 longitude: -99.19691)

BikeRack.create!(address: "Parroquia 517, Col del Valle Sur, Benito Juárez, 03100 Ciudad de México, CDMX",
                 description: "Cinco biciestacionamientos tipo U invertidad",
                 latitude: 19.37031,
                 longitude: -99.17215)

BikeRack.create!(address: "Torres Adalid 1359, Narvarte Poniente, Benito Juárez, 03020 Ciudad de México, CDMX",
                 description: "Cinco biciestacionamientos tipo U invertidad",
                 latitude: 19.38957,
                 longitude: -99.15767)

BikeRack.create!(address: "Pedro Romero de Terreros 1102, Narvarte Poniente, Benito Juárez, 03020 Ciudad de México, CDMX",
                 description: "Cinco biciestacionamientos tipo U invertidad",
                 latitude: 19.39431,
                 longitude: -99.15960)

Shop.destroy_all

Shop.create!(name: "Crankset Bicycle Shop (Trek Juárez)",
             address: "Londres 40, Juárez, Cuauhtémoc, 06600 Ciudad de México, CDMX",
             hours: "Monday to Friday 10:30AM-7PM Saturday 10:30AM-6PM",
             phone_number: "+525559414753",
             description: "Delivery In-store pick-up In-store shopping Same-day delivery",
             latitude: 19.42744,
             longitude: -99.15946)

Shop.create!(name: "People for Bikes",
             address: "Zacatecas 55, Roma Nte., Cuauhtémoc, 06700 Ciudad de México, CDMX",
             hours: "Monday to Saturday 10AM-8PM Sunday 10AM-5PM",
             phone_number: "+525552641457",
             description: "Delivery In-store pick-up In-store shopping Same-day delivery",
             website: "http://pfb.com.mx/",
             latitude: 19.41670,
             longitude: -99.15700)

Shop.create!(name: "Chop Chop Bikes",
             address: "Amsterdam 282, Colonia Condesa, Cuauhtémoc, 06100 Ciudad de México, CDMX",
             hours: "Monday to Sunday 11AM-8PM",
             phone_number: "+525519525376",
             description: "In-store pick-up In-store shopping Free Wifi",
             website: "http://www.chopchopbikes.com/",
             latitude: 19.41297,
             longitude: -99.16746)

Shop.create!(name: "Bikedemonium Workshop",
             address: "C. Villahermosa 29, Colonia Condesa, Cuauhtémoc, 06100 Ciudad de México, CDMX",
             hours: "Monday to Saturday 11:30AM-8:30PM Sunday Closed",
             phone_number: "+525520690448",
             description: "Bicycle repair shop",
             website: "http://instagram.com/bikedemoniumworkshop",
             latitude: 19.40499,
             longitude: -99.16987)

Shop.create!(name: "Pedal and Crank Bike Shop",
             address: "Gobernador José María Tornel 44, San Miguel Chapultepec I Secc, Miguel Hidalgo, 11850 Ciudad de México, CDMX",
             hours: "Tuesday 9AM-7PM Monday Closed",
             phone_number: "+525562736707",
             description: "Delivery In-store pick-up In-store shopping Same-day delivery FreeWifi Debit cards NFC mobile payments",
             website: "None",
             latitude: 19.41265,
             longitude: -99.18469)

Shop.create!(name: "BICIMANIACOS BIKE STORE",
             address: "Cumbres de Maltrata 160, Narvarte Poniente, Benito Juárez, 03020 Ciudad de México, CDMX",
             hours: "Monday to Saturday 10AM-8PM Sunday Closed",
             phone_number: "+525555364651",
             description: "Delivery In-store pick-up In-store shopping Same-day delivery Gender-neutral toilets Free WiFi",
             website: "https://www.facebook.com/bicimaniacos.bikestore/",
             latitude: 19.39548,
             longitude: -99.15480)

Shop.create!(name: "LBU Bike Store Patriotismo",
             address: "Av. Patriotismo 384, San Pedro de los Pinos, Benito Juárez, 03800 Ciudad de México, CDMX",
             hours: "Monday to Saturday 11AM-6PM Sunday 10AM-3PM",
             phone_number: "+525552711717",
             description: "In-store shopping In-store pick-up Delivery Same-day delivery Wheelchair-accessible",
             website: "http://www.lbushop.mx/",
             latitude: 19.39058,
             longitude: -99.18256)

Shop.create!(name: "Group Bcl Imports",
             address: "C. Carmen 97, Nativitas, Benito Juárez, 03500 Ciudad de México, CDMX",
             hours: "",
             phone_number: "Monday to Friday 10AM-6:30PM Saturday 10AM-2:30PM Sunday Closed",
             description: "In-store shopping In-store pick-up Delivery Wheelchair accessible",
             website: "None",
             latitude: 19.38093,
             longitude: -99.13548)

Shop.create!(name: "Bike Urban Reform",
             address: "Av. Morelos 70, Juárez, Cuauhtémoc, 06600 Ciudad de México, CDMX",
             hours: "Monday to Saturday 11AM-6PM Sunday 10AM-3PM",
             phone_number: "+525555350240",
             description: "Identifies as women-owned Gender-neutral toilets LGBTQ+friendly Transgender safe space",
             website: "http://www.lbushop.mx/",
             latitude: 19.43277,
             longitude: -99.15174)

Shop.create!(name: "Hippixi Bikes",
             address: "Lamartine 607, Polanco, Bosque de Chapultepec I Secc, Miguel Hidalgo, 11580 Ciudad de México, CDMX",
             hours: "Monday to Thursday 11AM-7PM Friday Closed Saturday and Sunday 9AM-6PM",
             phone_number: "+525585006129",
             description: "",
             website: "In-store pick-up Delivery Same-day delivery Free ",
             latitude: 19.42918,
             longitude: -99.18985)
