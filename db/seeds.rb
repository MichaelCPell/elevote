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

#Alamance
Precinct.create(name: "BURLINGTON 10", county_id: 1)        #1
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
Precinct.create(name: "WEST BOONE", county_id: 1)           #26

#Durham
Precinct.create(name:"01", county_id: 2)                   #37
Precinct.create(name:"02", county_id: 2)
Precinct.create(name:"03", county_id: 2)
Precinct.create(name:"04", county_id: 2)
Precinct.create(name:"05", county_id: 2)
Precinct.create(name:"06", county_id: 2)
Precinct.create(name:"07", county_id: 2)
Precinct.create(name:"08", county_id: 2)
Precinct.create(name:"09", county_id: 2)
Precinct.create(name:"10", county_id: 2)
Precinct.create(name:"12", county_id: 2)
Precinct.create(name:"13", county_id: 2)
Precinct.create(name:"14", county_id: 2)
Precinct.create(name:"15", county_id: 2)
Precinct.create(name:"16", county_id: 2)
Precinct.create(name:"17", county_id: 2)
Precinct.create(name:"18", county_id: 2)
Precinct.create(name:"19", county_id: 2)
Precinct.create(name:"20", county_id: 2)
Precinct.create(name:"21", county_id: 2)
Precinct.create(name:"22", county_id: 2)
Precinct.create(name:"23", county_id: 2)
Precinct.create(name:"24", county_id: 2)
Precinct.create(name:"25", county_id: 2)
Precinct.create(name:"26", county_id: 2)
Precinct.create(name:"27", county_id: 2)
Precinct.create(name:"28", county_id: 2)
Precinct.create(name:"29", county_id: 2)
Precinct.create(name:"30-1", county_id: 2)
Precinct.create(name:"30-2", county_id: 2)
Precinct.create(name:"31", county_id: 2)
Precinct.create(name:"32", county_id: 2)
Precinct.create(name:"33", county_id: 2)
Precinct.create(name:"34-1", county_id: 2)
Precinct.create(name:"34-2", county_id: 2)
Precinct.create(name:"35.3", county_id: 2)
Precinct.create(name:"36", county_id: 2)
Precinct.create(name:"37", county_id: 2)
Precinct.create(name:"38", county_id: 2)
Precinct.create(name:"39", county_id: 2)
Precinct.create(name:"40", county_id: 2)
Precinct.create(name:"41", county_id: 2)
Precinct.create(name:"42", county_id: 2)
Precinct.create(name:"43", county_id: 2)
Precinct.create(name:"44", county_id: 2)
Precinct.create(name:"45", county_id: 2)
Precinct.create(name:"46", county_id: 2)
Precinct.create(name:"47", county_id: 2)
Precinct.create(name:"48", county_id: 2)
Precinct.create(name:"50", county_id: 2)
Precinct.create(name:"51", county_id: 2)
Precinct.create(name:"52", county_id: 2)
Precinct.create(name:"53-1", county_id: 2)
Precinct.create(name:"53-2", county_id: 2)
Precinct.create(name:"54", county_id: 2)
Precinct.create(name:"55-11", county_id: 2)
Precinct.create(name:"55-49", county_id: 2)           #93





#Create Districts

#Alamance Districts      #Accurate for 2011
District.create(tier: "State", category: "Senate", number: "24" )
District.create(tier: "State", category: "House", number: "63")
District.create(tier: "State", category: "House", number: "64")
District.create(tier: "Federal", category: "Congressional", number: "6")


#Durham Districts  #Made up
District.create(tier: "State", category: "Senate", number: "18" )
District.create(tier: "State", category: "Senate", number: "30" )
District.create(tier: "State", category: "House", number: "29")
District.create(tier: "State", category: "House", number: "30")
District.create(tier: "State", category: "House", number: "31")  #five
District.create(tier: "State", category: "House", number: "55")
District.create(tier: "Federal", category: "Congressional", number: "6")
District.create(tier: "State", category: "Prosecutorial", number: "14A")
District.create(tier: "State", category: "Superior Court", number: "6")
District.create(tier: "State", category: "Judicial", number: "14")   #ten
District.create(tier: "State", category: "Governor", number: "1")


# Add Districts to Precinct


#Alamance   I think these are accurate
 1.upto(37) {|i|
   District.find(1).precincts << Precinct.find(i)
   District.find(4).precincts << Precinct.find(i)
 }

 1.upto(16) {|i|
   District.find(2).precincts << Precinct.find(i)
 }

 17.upto(37) {|i|
   District.find(3).precincts << Precinct.find(i)
 }



#Durham, I completely made this up

38.upto(65){ |i|
  District.find(5).precincts << Precinct.find(i)
  District.find(7).precincts << Precinct.find(i)
}

66.upto(93){ |i|
  District.find(6).precincts << Precinct.find(i)
  District.find(8).precincts << Precinct.find(i)
}


38.upto(93){ |i|
  District.find(11).precincts << Precinct.find(i)
  District.find(12).precincts << Precinct.find(i)
  District.find(13).precincts << Precinct.find(i)
  District.find(14).precincts << Precinct.find(i)

}

#Adding Statewide Governor District

for precinct in Precinct.all
  precinct.districts << District.find(11)
end


#end Adding Districts to Precincts


#Create Officials
#Official.create(firstname: "Michael", lastname: "Pell", district_id: 1, office_id: 1, email: "Michael",
#                password: "Pell")
#Official.create(firstname: "Jimmy", lastname: "McMillan", district_id: 1, office_id: 1, email: "Michael", password: "Pell")
#
#
#
#bevpur = Official.create(firstname: "Bev", lastname: "Purdue", district_id: 11, office_id: 4, email: "Michael", password: "Pell")
#bevpur.portrait.store!(File.open(File.join(Rails.root, 'assets/images/official_photos/bev_purdue/portrait.jpg')))
#bevpur.image1.store!(File.open(File.join(Rails.root, 'assets/images/official_photos/bev_purdue/withchildren.jpg')))
#bevpur.image2.store!(File.open(File.join(Rails.root, 'assets/images/official_photos/bev_purdue/withconstituent.jpg')))
#bevpur.save!
#
