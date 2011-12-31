class Official < ActiveRecord::Base
  has_secure_password
  validates_presence_of :password, :on => :create
  validates_presence_of :email

  mount_uploader :portrait, ImageUploader
  mount_uploader :image1, ImageUploader
  mount_uploader :image2, ImageUploader

  #Scopes

  scope :presidents, where(:office_id => 1)
  scope :usSenate, where(:office_id => 2)
  scope :usHouse, where(:office_id => 3)
  scope :Governor, where(:office_id => 4)
  scope :stateSenate, where(:office_id => 5)
  scope :stateHouse, where(:office_id => 6)



  #Associations


  belongs_to :district
  belongs_to :office
  has_many :answers
  accepts_nested_attributes_for :answers

  has_many :office_questions, :through => :answers
  has_many :questions, :through => :answers


  has_many :questions



  #methods

  def count_total_questions
    self.questions + self.district_questions + self.office_questions
  end

  #Used in the Precinct show
  def precinctsShowLink
    "#{firstname} #{lastname}, #{office.name}"
  end

  def create_answers

    1.upto(4) {|i|
    self.answers << Answer.new(question_id: i, name: "This Question Has Not Been Answered")
    }


  end

  #validations



  #callback

end
