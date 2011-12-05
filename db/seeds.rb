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
Question.create(name: "What are three goals that you hope to accomplish by the end of this term?")
Question.create(name: "Describe a time that you have successfully compromised:")
Question.create(name: "Rank these 5 facets of society in order of importance to your candidacy and give a brief explanation:")
Question.create(name: "Tell us something about yourself that is humanizing and entertaining:")
#Create Office Specific Questions
OfficeQuestion.create(name: "President Question 1", office_id: 1)
OfficeQuestion.create(name: "President Question 2", office_id: 1)
OfficeQuestion.create(name: "President Question 3", office_id: 1)
OfficeQuestion.create(name: "President Question 4", office_id: 1)



#Create Precincts
Precinct.create(name: "West Boone")
Precinct.create(name: "East Boone")

#Create Districts
District.create(tier: "State", category: "Senate", number: "24th" )

#Create Politicians
Politician.create(firstname: "Michael", lastname: "Pell", district_id: 1, office_id: 1)
Politician.create(firstname: "Jimmy", lastname: "McMillan", district_id: 1, office_id: 1)


# Add Districts to Precinct


