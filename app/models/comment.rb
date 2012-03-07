class Comment < ActiveRecord::Base
  acts_as_tree

  #Female Associations
  has_many :comments, :as => :commentable

  has_many :endorsements, :as => :endorsementable
  accepts_nested_attributes_for :endorsements



  #Male Associations
  belongs_to :authorable, :polymorphic => :true
  belongs_to :commentable, :polymorphic => :true





  #scope :mostPopular, find(:all, :limit => "3", :order => "vote_count, DESC")
  scope :support, where(:direction => "support")
  scope :oppose, where(:direction => "oppose")







end
