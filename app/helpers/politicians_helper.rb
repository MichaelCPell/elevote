module PoliticiansHelper

  # @param question [Object]
  # @param politician_id [Object]
  def find_answer(question, politician)


   if question.answers.find_by_politician_id(politician)
     question.answers.find_by_politician_id(politician).name
   else
    "No Answer"

   end

  end





end
