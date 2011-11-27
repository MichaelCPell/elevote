class Politician < ActiveRecord::Base
  #Scopes


  #Associations
  has_many :questions, :through => :answers
  has_many :answers
  accepts_nested_attributes_for :answers

  belongs_to :district
  belongs_to :office

  has_many :office_questions, :through => :answers



  #methods

  def count_total_questions
    self.questions + self.district_questions + self.office_questions
  end


  #validations



  #callback

end
