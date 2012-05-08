module RacesHelper


  def is_in_booth(id)

    if session[:candidate_ids].index(id.to_s)
      link_to "Remove from Booth",
            new_endorsement_path(:candidate_id => id),
            :remote => true,
            :class => "btn btn-danger",
            :style => "width: 200px;"
    else
        link_to "Add to Booth",
            new_endorsement_path(:candidate_id => id),
            :remote => true,
            :class => "btn btn-primary",
            :style => "width: 200px;"
    end

  end







end
