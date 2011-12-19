class District < ActiveRecord::Base
 has_and_belongs_to_many :precincts
 has_many :officials




 def all_togethor
   "#{category} #{number} #{tier}"
 end
end
