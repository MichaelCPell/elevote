class District < ActiveRecord::Base
 has_and_belongs_to_many :precincts
 has_many :officials
 belongs_to :office




 def all_togethor
   "#{gpe} #{category} #{number}"
 end
end
