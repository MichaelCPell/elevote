module CandidatesHelper

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

   def is_in_booth(id)

    if session[:candidate_ids].index(id.to_s)
      link_to "Remove from Booth",
            new_endorsement_path(:candidate_id => id),
            :remote => true,
            :class => "btn btn-warning booth-button",
            :style => "width: 200px; font-size: 18px;"
    else
      link_to "Add to Booth",
            new_endorsement_path(:candidate_id => id),
            :remote => true,
            :class => "btn btn-success booth-button",
            :style => "width: 200px; font-size: 18px;"
    end

  end

end
