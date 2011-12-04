class Politician < ActiveRecord::Base
  has_secure_password
  validates_presence_of :password, :on => :create
  validates_presence_of :email




  has_many :answers
  has_many :office_questions, :through => :answers



  #Scopes


  #Associations


  belongs_to :district
  belongs_to :office



  has_many :questions



  #methods

  def count_total_questions
    self.questions + self.district_questions + self.office_questions
  end


  #validations



  #callback

end
