module RacesHelper
  def is_in_booth(id)

    if session[:candidate_ids].index(id.to_s)
      link_to "Remove from Booth",
            new_endorsement_path(:candidate_id => id),
            :remote => true,
            :class => "btn btn-danger booth-button",
            :style => "width: 200px; font-size: 18px;"
    else
      link_to "Add to Booth",
            new_endorsement_path(:candidate_id => id),
            :remote => true,
            :class => "btn btn-primary booth-button",
            :style => "width: 200px; font-size: 18px;"
    end

  end
end
