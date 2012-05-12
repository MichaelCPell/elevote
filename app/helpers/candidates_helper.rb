module CandidatesHelper

  # @param question [Object]
  # @param candidate_id [Object]
  def find_answer(question, candidate)


   if question.answers.find_by_candidate_id(candidate)
     question.answers.find_by_candidate_id(candidate).name
   else
    "No Answer"

   end

  end


  def candidate_full_name(candidate)
   candidate.firstname + " " + candidate.lastname
  end

  def display_portrait(candidate)
    if candidate.portrait_url
      image_tag candidate.portrait_url.to_s
    else
      image_tag 'missing_portrait.png'
    end
  end







end
