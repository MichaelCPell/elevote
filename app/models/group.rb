class Group < ActiveRecord::Base


  has_many :endorsements, :as => :endorsementable
  has_many :endorsements, :as => :endorsementer
  has_many :comments, :as => :commentable



end
