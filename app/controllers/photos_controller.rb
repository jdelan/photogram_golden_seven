class PhotosController < ApplicationController
  def index
    render("/photos/index.html.erb")
  end

  def show

    id_number = params["id_number"]
    p = Photo.find(id_number)

    @the_caption = p.caption
    @the_image_url = p.source
    @created_at = p.created_at

    render("/photos/show.html.erb")
  end


end
