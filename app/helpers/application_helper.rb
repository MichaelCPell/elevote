module ApplicationHelper

  def display_portrait(candidate)
    if candidate.portrait_url
      image_tag(candidate.portrait_url.to_s, :size => "10x10")
    else
      image_tag("missing_portrait.png", :size => "10x10")
    end
  end


end
