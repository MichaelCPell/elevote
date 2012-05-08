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
Candidate.create(firstname: "Larry",
                lastname: "Dixon",
                email: "Larry",
                password: "Dixon",
                race_id: 1)

Candidate.create(firstname: "Anita",
                lastname: "Daniels",
                email: "Anita",
                password: "Daniels",
                race_id: 1)

Candidate.create(firstname: "Fred",
                lastname: "Foster",
                email: "Fred",
                password: "Foster",
                race_id: 1)

Candidate.create(firstname: "Stephen",
                lastname: "Hopkins",
                email: "Stephen",
                password: "Hopkins",
                race_id: 1)

Candidate.create(firstname: "Brenda", lastname: "Howerton", email: "Brenda",
                password: "Howerton", race_id: 1)

Candidate.create(firstname: "Elaine", lastname: "Hyman", email: "Elaine",
                password: "Hyman", race_id: 1)

Candidate.create(firstname: "John", lastname: "Owens", email: "John",
                password: "Owens", race_id: 1)

Candidate.create(firstname: "Wendy", lastname: "Jacobs", email: "Wendy",
                password: "Jacobs", race_id: 1)

Candidate.create(firstname: "Rickey", lastname: "Padgett", email: "Rickey",
                password: "Padgett", race_id: 1)

Candidate.create(firstname: "Michael", lastname: "Page", email: "Michael",
                password: "Page", race_id: 1)

Candidate.create(firstname: "Ellen", lastname: "Reckhow", email: "Ellen",
                password: "Reckhow", race_id: 1)

Candidate.create(firstname: "Will", lastname: "Willson", email: "Will",
                password: "Willson", race_id: 1)

Candidate.create(firstname: "Joe", lastname: "Bowser", email: "Joe",
                password: "Bowser", race_id: 1)

Candidate.create(firstname: "Dilcy", lastname: "Burton", email: "Dilcy",
                password: "Burton", race_id: 1)


#Race: School Board

Candidate.create(firstname: "Leigh",
                lastname: "Bordley",
                email: "Leigh",
                password: "Bordley",
                race_id: 2)

Candidate.create(firstname: "John",
                lastname: "Tarantino",
                email: "John",
                password: "Tarantino",
                race_id: 2)

#Race: Governor
Candidate.create(firstname: "Walter",
                lastname: "Dalton",
                email: "Walter",
                password: "Dalton",
                race_id: 3)

Candidate.create(firstname: "Bill",
                lastname: "Faison",
                email: "Bill",
                password: "Faison",
                race_id: 3)

Candidate.create(firstname: "Pat",
                lastname: "McCrory",
                email: "Pat",
                password: "McCrory",
                race_id: 3)






# Races
Race.create(name:"County Commissioner")
Race.create(name:"School Board (At Large)")
Race.create(name:"Governor")

