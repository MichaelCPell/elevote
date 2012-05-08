module CandidatesHelper

  # @param question [Object]
  # @param official_id [Object]
  def find_answer(question, official)


   if question.answers.find_by_official_id(official)
     question.answers.find_by_official_id(official).name
   else
    "No Answer"

   end

  end


  def officials_full_name(official)
    full_name = official.firstname + " " + official.lastname
  end

  def display_portrait(candidate)
    if candidate.portrait_url
      image_tag candidate.portrait_url.to_s
    else
      image_tag 'missing_portrait.png'
    end
  end






end
