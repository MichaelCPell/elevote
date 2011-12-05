class Answer < ActiveRecord::Base
  belongs_to :question
  belongs_to :office_question

  belongs_to :politician

  #validates_presence_of :politician_id


end
