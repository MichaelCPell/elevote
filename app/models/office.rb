class Office < ActiveRecord::Base
  has_many :questions
  has_many :politicians
  has_many :office_questions

end
