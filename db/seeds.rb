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
Racks.destroy_all

Racks.create!(address: "Adolfo Prieto 303, código 2, Col del Valle Centro, Benito Juárez, 03103 Ciudad de México, CDMX",
              description: "Tres biciestacionamientos tipo cuadro")

Racks.create!(address: "Amsterdam 244, Hipódromo, Cuauhtémoc, 06100 Ciudad de México, CDMX",
              description: "Un biciestacionamiento tipo U invertidad")

Racks.create!(address: "C. Amberes 6, Juárez, Cuauhtémoc, 06600 Ciudad de México, CDMX",
              description: "Cinco biciestacionamientos tipo U invertidad")

Racks.create!(address: "C. Liverpool 34, Juárez, Cuauhtémoc, 06600 Juárez, CDMX",
              description: "Cuatro biciestacionamientos tipo U invertidad")

Racks.create!(address: "Cda. Ernesto Pugibet 17, Colonia Centro, Centro, Cuauhtémoc, 06000 Ciudad de México, CDMX",
              description: "Tres biciestacionamientos tipo U invertidad")

Racks.create!(address: "Revillagigedo 20, Colonia Centro, Centro, Cuauhtémoc, 06050 Ciudad de México, CDMX",
              description: "Tres biciestacionamiento tipo U invertidad")

Racks.create!(address: "Calle Julio Verne 233, Polanco, Polanco IV Secc, Miguel Hidalgo, 11550 Ciudad de México, CDMX",
              description: "biciestacionamiento tipo Auto")

Racks.create!(address: "Parroquia 517, Col del Valle Sur, Benito Juárez, 03100 Ciudad de México, CDMX",
              description: "Cinco biciestacionamientos tipo U invertidad")

Racks.create!(address: "Torres Adalid 1359, Narvarte Poniente, Benito Juárez, 03020 Ciudad de México, CDMX",
              description: "Cinco biciestacionamientos tipo U invertidad")

Racks.create!(address: "Pedro Romero de Terreros 1102, Narvarte Poniente, Benito Juárez, 03020 Ciudad de México, CDMX",
              description: "Cinco biciestacionamientos tipo U invertidad")
