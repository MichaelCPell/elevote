class User < ActiveRecord::Base

  has_many :endorsements, :as => :endorsementer

  has_many :comments, :as => :author
  has_many :comments, :as => :target




end
