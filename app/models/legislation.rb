class Legislation < ActiveRecord::Base
  has_many :opinions

  has_many :comments, :as => :commentable

  accepts_nested_attributes_for :comments


end
