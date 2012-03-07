# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# Legislation
Legislation.create(name: "Amendment 1", content: "This is the first amendment!")
Official.create(firstname: "Michael", lastname: "Pell", district_id: 1, office_id: 1, email: "Michael",
                password: "Pell")