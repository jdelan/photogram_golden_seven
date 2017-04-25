class PhotosController < ApplicationController
  def index
    @all_photos = Photo.order({:created_at => :desc})
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

  def new_form
    render("/photos/new_form.html.erb")
  end

  def create_row
    p = Photo.new
    p.source = params["the_image_url"]
    p.caption = params["the_caption"]
    p.save
    redirect_to("/photos")
  end

  def edit_form
    render("/photos/edit_form.html.erb")
  end
end
