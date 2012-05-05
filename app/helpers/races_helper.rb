module RacesHelper


  def is_in_booth_class(id)

    if session[:official_ids].index(id.to_s)
      "btn-danger"
    else
      "btn-primary"
    end
  end

  def is_in_booth_text(id)

    if session[:official_ids].index(id.to_s)
      "Remove from Booth"
    else
      "Add to Booth"
    end
  end




end
