module ApplicationHelper

  def link_to_add_fields(name, f, association)
    new_object = f.object.send(association).klass.new
    #id = new_object.object_id
    #fields =
    f.fields_for(association, new_object) do |builder|
      render(association.to_s.singularize + "_fields", f: builder)
    end
    #link_to(name, '#', class: "add_fields", data: {id: id, fields: fields.gsub("\n", "")})
  end


  def facebook_like_button(candidate)
    "
    <div class='fb-like' data-href='#{official_url(candidate)} %>' data-send='false'
     data-width='150' data-show-faces='true' data-font='trebuchet ms'>
    </div>
    "
  end

end
