class Comment < ActiveRecord::Base
  acts_as_tree

  has_many :comments, :as => :commentable
  belongs_to :commentable, :polymorphic => :true






end
