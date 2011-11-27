class Question < ActiveRecord::Base

  has_many :politicians, :through => :answers
  has_many :answers








end
