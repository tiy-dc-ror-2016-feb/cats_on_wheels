# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

500.times do
  owner = Owner.create(name: FFaker::Name.name, notes: FFaker::Lorem.paragraph)
  rand(3).to_i.times do
    pet = owner.pets.create(name: FFaker::Food.meat, notes: FFaker::BaconIpsum.paragraph)
    rand(40).to_i.times do
      Timecop.travel(rand(3000).to_i.days.ago) do
        pet.visits.create(notes: FFaker::HealthcareIpsum.paragraph)
      end
    end
  end
end
