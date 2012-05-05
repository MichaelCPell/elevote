module RacesHelper


  def is_in_booth(id)

    if session[:official_ids].index(id.to_s)
      link_to "Remove from Booth",
            new_endorsement_path(:official_id => id),
            :remote => true,
            :class => "btn btn-danger"
    else
        link_to "Add to Booth",
            new_endorsement_path(:official_id => id),
            :remote => true,
            :class => "btn btn-primary"
    end

  end

  def facebook_like_button(candidate_column)
    "
    <div class='fb-like' data-href='#{official_url(candidate_column)} %>' data-send='false'
     data-width='150' data-show-faces='true' data-font='trebuchet ms'>
    </div>
    "
  end








end
