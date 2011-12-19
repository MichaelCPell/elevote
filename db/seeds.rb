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


#Create Counties
County.create(name: "Alamance")
County.create(name: "Durham")

#Create Precincts
Precinct.create(name: "BURLINGTON 10", county_id: 1)
Precinct.create(name: "BURLINGTON 4", county_id: 1)
Precinct.create(name: "BURLINGTON 5", county_id: 1)
Precinct.create(name: "BURLINGTON 7", county_id: 1)
Precinct.create(name: "BURLINGTON 8", county_id: 1)
Precinct.create(name: "EAST BURLINGTON", county_id: 1)
Precinct.create(name: "EAST GRAHAM", county_id: 1)
Precinct.create(name: "GRAHAM 3", county_id: 1)
Precinct.create(name: "HAW RIVER", county_id: 1)
Precinct.create(name: "NORTH BURLINGTON", county_id: 1)
Precinct.create(name: "NORTH GRAHAM", county_id: 1)
Precinct.create(name: "NORTH MELVILLE", county_id: 1)
Precinct.create(name: "PLEASANT GROVE", county_id: 1)
Precinct.create(name: "SOUTH BURLINGTON", county_id: 1)
Precinct.create(name: "SOUTH MELVILLE", county_id: 1)
Precinct.create(name: "WEST BURLINGTON", county_id: 1)
Precinct.create(name: "WEST GRAHAM", county_id: 1)
Precinct.create(name: "ALBRIGHT", county_id: 1)
Precinct.create(name: "BOONE 5", county_id: 1)
Precinct.create(name: "BURLINGTON 6", county_id: 1)
Precinct.create(name: "BURLINGTON 9", county_id: 1)
Precinct.create(name: "CENTRAL BOONE", county_id: 1)
Precinct.create(name: "COBLE", county_id: 1)
Precinct.create(name: "FAUCETTE", county_id: 1)
Precinct.create(name: "GRAHAM 4", county_id: 1)
Precinct.create(name: "MELVILLE 3", county_id: 1)
Precinct.create(name: "MORTON", county_id: 1)
Precinct.create(name: "NORTH BOONE", county_id: 1)
Precinct.create(name: "NORTH BOONE 2", county_id: 1)
Precinct.create(name: "NORTH NEWLIN", county_id: 1)
Precinct.create(name: "NORTH THOMPSON", county_id: 1)
Precinct.create(name: "PATTERSON", county_id: 1)
Precinct.create(name: "SOUTH BOONE", county_id: 1)
Precinct.create(name: "SOUTH GRAHAM", county_id: 1)
Precinct.create(name: "SOUTH NEWLIN", county_id: 1)
Precinct.create(name: "SOUTH THOMPSON", county_id: 1)
Precinct.create(name: "WEST BOONE", county_id: 1)


#Create Districts
District.create(tier: "State", category: "Senate", number: "24" )

District.create(tier: "State", category: "House", number: "63")
District.create(tier: "State", category: "House", number: "64")
District.create(tier: "Federal", category: "Congressional", number: "6")

#Create Officials
Official.create(firstname: "Michael", lastname: "Pell", district_id: 1, office_id: 1)
Official.create(firstname: "Jimmy", lastname: "McMillan", district_id: 1, office_id: 1)

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



