# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Blood.create(btype: 'A', factor: '+')
Blood.create(btype: 'A', factor: '-')
Blood.create(btype: 'B', factor: '+')
Blood.create(btype: 'B', factor: '-')
Blood.create(btype: 'AB', factor: '+')
Blood.create(btype: 'AB', factor: '-')
Blood.create(btype: 'O', factor: '+')
Blood.create(btype: 'O', factor: '-')

Institution.create(name: "Hospital para niños v1", short_description: "A short description", description: "A very loooooooong description.", lat: -32.1231, lng: -24.2312, address: "Avellaneda 9191, Buenos Aires, Argentina")
Institution.create(name: "Hospital para niños v2", short_description: "A short description", description: "A very loooooooong description.", lat: -32.1231, lng: -24.2312, address: "Avellaneda 9191, Buenos Aires, Argentina")
Institution.create(name: "Hospital para niños v3", short_description: "A short description", description: "A very loooooooong description.", lat: -32.1231, lng: -24.2312, address: "Avellaneda 9191, Buenos Aires, Argentina")
Institution.create(name: "Hospital para niños v4", short_description: "A short description", description: "A very loooooooong description.", lat: -32.1231, lng: -24.2312, address: "Avellaneda 9191, Buenos Aires, Argentina")
Institution.create(name: "Hospital para niños v5", short_description: "A short description", description: "A very loooooooong description.", lat: -32.1231, lng: -24.2312, address: "Avellaneda 9191, Buenos Aires, Argentina")

20.times { Petition.create(blood: Blood.all[rand(7)+1], amount: rand(20)+1, institution: Institution.all[rand(4)+1], deadline: DateTime.now + rand(10)) }
