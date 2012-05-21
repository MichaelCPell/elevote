class Candidate < ActiveRecord::Base
  extend FriendlyId
  mount_uploader :portrait, ImageUploader
  friendly_id :full_name, :use => :slugged

  has_secure_password
  validates_presence_of :password, :on => :create
  validates_presence_of :email



  belongs_to :race
  has_many :presences
  has_many :sites, :through => :presences



  #Comments Relationships
    has_many :comments, :as => :authorable
    has_many :comments, :as => :commentable


    has_many :updates, :class_name => "Comment", :as => :authorable
    has_many :video_comments, :class_name => "Comment", :as => :commentable

  #Endorsements Relationships
    has_many :given_endorsements, :class_name => "Endorsement", :as => :endorsementer
    has_many :received_endorsements, :class_name => "Endorsement", :as => :endorsementable



  has_many :questions
  has_many :statements
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


  def build_my_statements
    categories = %w(about positions goals achievements)

    categories.each do |category|
      self.build_three_statements(category)
    end

    self.save
  end

  def build_three_statements(category)
    difference = 3 - self.statements.where(category: category).count

    difference.times do
      self.statements.create(category: category, content: "Click Here to Edit")
    end

  end
  #validations



  #callback

end
