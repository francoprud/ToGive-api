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

23.times { Petition.create(blood: Blood.all[rand(7)+1], amount: rand(20)+1, institution: Institution.all[rand(4)+1], deadline: DateTime.now + rand(10), description: 'Increíble donación para saber a donde vas ping mostrar endpoint.') }

Institution.create(name: "Hospital Alemán", lat: -34.580395, lng: -58.434019, email: "aleman@gmail.com", password: "123123123", password_confirmation: "123123123", address: "Santos Dumont 1243, Buenos Aires, Argentina")
Institution.create(name: "Hospital Jardín de Niños", lat: -34.589617, lng: -58.415479, email: "ninos@gmail.com", password: "123123123", password_confirmation: "123123123", address: "Díaz Petion 2243, Buenos Aires, Argentina")
Institution.create(name: "Centro de Donación", lat: -32.589617, lng: -58.415479, email: "ninos2@gmail.com", password: "123123123", password_confirmation: "123123123", address: "Díaz Aguero 2243, Buenos Aires, Argentina")
Institution.create(name: "Centro de Petición", lat: -32.589617, lng: -58.415479, email: "ninos3@gmail.com", password: "123123123", password_confirmation: "123123123", address: "Díaz Aguero 2243, Buenos Aires, Argentina")
Institution.create(name: "Hospital de Donación", lat: -32.589617, lng: -58.415479, email: "ninos4@gmail.com", password: "123123123", password_confirmation: "123123123", address: "Díaz Aguero 2243, Buenos Aires, Argentina")
Institution.create(name: "Centro de Donación", lat: -32.589617, lng: -58.415479, email: "ninos2@gmail.com", password: "123123123", password_confirmation: "123123123", address: "Díaz Aguero 2243, Buenos Aires, Argentina")

Petition.create(blood_id: rand(7)+1, amount: rand(23)+1, description: "Necesitamos para niños pequeños.", deadline: DateTime.now + rand(5), institution: Institution.all.first)
