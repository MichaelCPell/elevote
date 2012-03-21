class Official < ActiveRecord::Base
  has_secure_password
  validates_presence_of :password, :on => :create
  validates_presence_of :email

  mount_uploader :portrait, ImageUploader
  mount_uploader :image1, ImageUploader
  mount_uploader :image2, ImageUploader

  #Scopes


  #Associations

  belongs_to :race




  #Comments Relationships
    has_many :comments, :as => :authorable
    has_many :comments, :as => :commentable


    has_many :updates, :class_name => "Comment", :as => :authorable

    has_many :short_goals
    has_many :short_achievements


  #Endorsements Relationships
    has_many :given_endorsements, :class_name => "Endorsement", :as => :endorsementer
    has_many :received_endorsements, :class_name => "Endorsement", :as => :endorsementable


  has_many :questions

  has_many :opinions

  accepts_nested_attributes_for :comments, :short_goals, :short_achievements

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
