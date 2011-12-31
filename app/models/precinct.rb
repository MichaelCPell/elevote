class Precinct < ActiveRecord::Base
  has_many :officials, :through => :districts
  has_and_belongs_to_many :districts
  belongs_to :county




end
