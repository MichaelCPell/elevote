class Site < ActiveRecord::Base
  has_many :presences
  has_many :candidates, :through => :presences
end
