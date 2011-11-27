class OfficeQuestion < ActiveRecord::Base
  has_many :politicians, :through => :answers
  has_many :answers

  belongs_to :office
end
