class Comment < ActiveRecord::Base
  acts_as_tree

  has_many :comments, :as => :commentable
  belongs_to :commentable, :polymorphic => :true

  has_many :votes, :as => :voteable
  accepts_nested_attributes_for :votes


  #scope :mostPopular, find(:all, :limit => "3", :order => "vote_count, DESC")
  scope :support, where(:direction => "support")
  scope :oppose, where(:direction => "oppose")







end
