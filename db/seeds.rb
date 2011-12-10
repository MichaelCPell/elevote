# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)




# Begin Creating the Office
Office.create(name: "President")
Office.create(name: "US Senate")
Office.create(name: "US House")
Office.create(name: "Governor")
Office.create(name: "State Senate")
Office.create(name: "State House")


#Create General Questions
Question.create(name: "What are three goals you intend to accomplish this term?")
Question.create(name: "Describe a time that you have successfully compromised:")
Question.create(name: "Which 5 issues matter most to your candidacy")
Question.create(name: "Tell us something about yourself that is humanizing and entertaining:")
#Create Office Specific Questions
OfficeQuestion.create(name: "President Question 1", office_id: 1)
OfficeQuestion.create(name: "President Question 2", office_id: 1)
OfficeQuestion.create(name: "President Question 3", office_id: 1)
OfficeQuestion.create(name: "President Question 4", office_id: 1)



#Create Precincts
Precinct.create(name: "BURLINGTON 10")
Precinct.create(name: "BURLINGTON 4")
Precinct.create(name: "BURLINGTON 5")
Precinct.create(name: "BURLINGTON 7")
Precinct.create(name: "BURLINGTON 8")
Precinct.create(name: "EAST BURLINGTON")
Precinct.create(name: "EAST GRAHAM")
Precinct.create(name: "GRAHAM 3")
Precinct.create(name: "HAW RIVER")
Precinct.create(name: "NORTH BURLINGTON")
Precinct.create(name: "NORTH GRAHAM")
Precinct.create(name: "NORTH MELVILLE")
Precinct.create(name: "PLEASANT GROVE")
Precinct.create(name: "SOUTH BURLINGTON")
Precinct.create(name: "SOUTH MELVILLE")
Precinct.create(name: "WEST BURLINGTON")
Precinct.create(name: "WEST GRAHAM")
Precinct.create(name: "ALBRIGHT")
Precinct.create(name: "BOONE 5")
Precinct.create(name: "BURLINGTON 6")
Precinct.create(name: "BURLINGTON 9")
Precinct.create(name: "CENTRAL BOONE")
Precinct.create(name: "COBLE")
Precinct.create(name: "FAUCETTE")
Precinct.create(name: "GRAHAM 4")
Precinct.create(name: "MELVILLE 3")
Precinct.create(name: "MORTON")
Precinct.create(name: "NORTH BOONE")
Precinct.create(name: "NORTH BOONE 2")
Precinct.create(name: "NORTH createLIN")
Precinct.create(name: "NORTH THOMPSON")
Precinct.create(name: "PATTERSON")
Precinct.create(name: "SOUTH BOONE")
Precinct.create(name: "SOUTH GRAHAM")
Precinct.create(name: "SOUTH createLIN")
Precinct.create(name: "SOUTH THOMPSON")
Precinct.create(name: "WEST BOONE")


#Create Districts
District.create(tier: "State", category: "Senate", number: "24" )

District.create(tier: "State", category: "House", number: "63")
District.create(tier: "State", category: "House", number: "64")
District.create(tier: "Federal", category: "Congressional", number: "6")

#Create Politicians
Politician.create(firstname: "Michael", lastname: "Pell", district_id: 1, office_id: 1)
Politician.create(firstname: "Jimmy", lastname: "McMillan", district_id: 1, office_id: 1)

# Add Districts to Precinct

 1.upto(36) {|i|
   District.find(1).precincts << Precinct.find(i)
   District.find(4).precincts << Precinct.find(i)
 }

 1.upto(16) {|i|
   District.find(2).precincts << Precinct.find(i)
 }

 17.upto(36) {|i|
   District.find(3).precincts << Precinct.find(i)
 }



