class Answer < ActiveRecord::Base
  belongs_to :question
  belongs_to :office_question

  belongs_to :official

  #validates_presence_of :official_id


end
