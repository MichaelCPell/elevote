class Legislation < ActiveRecord::Base

  has_many :comments, :as => :commentable
  accepts_nested_attributes_for :comments

  has_many :endorsements, :as => :endorsementable
  accepts_nested_attributes_for :endorsements





end
