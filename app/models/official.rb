class Official < ActiveRecord::Base
  extend FriendlyId

  has_secure_password
  validates_presence_of :password, :on => :create
  validates_presence_of :email

  mount_uploader :portrait, ImageUploader


  friendly_id :full_name, :use => :slugged


  #Scopes


  #Associations

  belongs_to :race




  #Comments Relationships
    has_many :comments, :as => :authorable
    has_many :comments, :as => :commentable


    has_many :updates, :class_name => "Comment", :as => :authorable
    has_many :video_comments, :class_name => "Comment", :as => :commentable

  has_many :statements

  #Endorsements Relationships
    has_many :given_endorsements, :class_name => "Endorsement", :as => :endorsementer
    has_many :received_endorsements, :class_name => "Endorsement", :as => :endorsementable


  has_many :questions

  has_many :opinions

  accepts_nested_attributes_for :comments, :statements

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


  def full_name
    "#{firstname} #{lastname}"
  end

  #validations



  #callback

end
