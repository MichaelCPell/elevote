module OfficialsHelper

  # @param question [Object]
  # @param official_id [Object]
  def find_answer(question, official)


   if question.answers.find_by_official_id(official)
     question.answers.find_by_official_id(official).name
   else
    "No Answer"

   end

  end





end
