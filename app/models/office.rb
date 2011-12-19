class Office < ActiveRecord::Base
  has_many :questions
  has_many :officials
  has_many :office_questions

end
