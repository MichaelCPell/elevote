# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  #wahhh
# Legislation
Legislation.create(name: "Amendment 1", content: "This is the first amendment!")


#Officials


#t.string :firstname
#t.string :lastname
#t.string :email
#t.string :password_digest
#t.string :portrait
#t.string :campaignSlogan
#t.text :aboutMe
#t.text :positions
#t.text :goals
#t.text :achievements
#t.string :office
#t.integer :race_id


#County Commissioner Races
#
#Candidate.create(firstname: "Fred",
#                lastname: "Foster",
#                email: "Fred",
#                password: "Foster",
#                race_id: 1).build_my_statements
#
#
#Candidate.create(firstname: "Brenda", lastname: "Howerton", email: "Brenda",
#                password: "Howerton", race_id: 1).build_my_statements
#
#Candidate.create(firstname: "Wendy", lastname: "Jacobs", email: "Wendy",
#                password: "Jacobs", race_id: 1).build_my_statements
#
#Candidate.create(firstname: "Michael", lastname: "Page", email: "Michael",
#                password: "Page", race_id: 1).build_my_statements
#
#Candidate.create(firstname: "Ellen", lastname: "Reckhow", email: "Ellen",
#                password: "Reckhow", race_id: 1).build_my_statements


Candidate.create(firstname: "Adam",
                lastname: "One",
                email: "Adam",
                password: "One",
                race_id: 3).build_my_statements

Candidate.create(firstname: "Barbara",
                lastname: "Two",
                email: "Barbara",
                password: "Two",
                race_id: 3).build_my_statements

Candidate.create(firstname: "Christina",
                lastname: "Three",
                email: "Christina",
                password: "Three",
                race_id: 3).build_my_statements

Candidate.create(firstname: "David",
                lastname: "Four",
                email: "David",
                password: "Four",
                race_id: 3).build_my_statements






#Race: School Board

Candidate.create(firstname: "Edward",
                lastname: "Five",
                email: "Edward",
                password: "Five",
                race_id: 2).build_my_statements

Candidate.create(firstname: "Frances",
                lastname: "Five",
                email: "Frances",
                password: "Six",
                race_id: 2).build_my_statements

#Race: Governor
Candidate.create(firstname: "Walter",
                lastname: "Dalton",
                email: "Walter",
                password: "Dalton",
                race_id: 1).build_my_statements

Candidate.create(firstname: "Pat",
                lastname: "McCrory",
                email: "Pat",
                password: "McCrory",
                race_id: 1).build_my_statements

# Races

Race.create(name:"Governor")
Race.create(name:"Lieutenant Governor")
Race.create(name:"County Commissioner")


# Sites
Site.create(name:"Durham",
            state:"North Carolina",
            county: "Durham")

Site.create(name:"Wake",
            state:"North Carolina",
            county: "Wake")

Site.create(name:"Orange",
            state:"North Carolina",
            county: "Orange")


# Add State Level Candidates to All Sites


Site.all.each {|f| f.candidates << Candidate.all}

