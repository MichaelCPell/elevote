class Legislation < ActiveRecord::Base
  has_many :opinions

  has_many :comments, :as => :commentable
  has_many :votes, :as => :voteable

  accepts_nested_attributes_for :comments
  accepts_nested_attributes_for :votes



end
