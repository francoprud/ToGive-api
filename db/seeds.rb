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

Institution.create(name: 'Hospital de Pedro1', email: 'pedro1@pepito.com', address: 'Sirenas v2.0 dirección 4.5', lat: -32.58121, lng: -55.42433)
Institution.create(name: 'Hospital de Pedro2', email: 'pedro2@pepito.com', address: 'Sirenas v2.0 dirección 4.5', lat: -34.58121, lng: -58.42433)
Institution.create(name: 'Hospital de Pedro3', email: 'pedro3@pepito.com', address: 'Sirenas v2.0 dirección 4.5', lat: -33.58121, lng: -56.42433)
Institution.create(name: 'Hospital de Pedro4', email: 'pedro4@pepito.com', address: 'Sirenas v2.0 dirección 4.5', lat: -34.58121, lng: -57.42433)
Institution.create(name: 'Hospital de Pedro5', email: 'pedro5@pepito.com', address: 'Sirenas v2.0 dirección 4.5', lat: -36.58121, lng: -54.42433)

23.times { Petition.create(blood: Blood.all[rand(7)+1], amount: rand(20)+1, institution: Institution.all[rand(4)+1], deadline: DateTime.now + rand(10), description: 'Increíble donación para saber a donde vas ping mostrar endpoint.') }
