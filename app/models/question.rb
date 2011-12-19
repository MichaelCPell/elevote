class Question < ActiveRecord::Base

  has_many :officials, :through => :answers
  has_many :answers








end
