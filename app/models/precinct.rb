class Precinct < ActiveRecord::Base
  has_many :politicians, :through => :districts
  has_and_belongs_to_many :districts
end
