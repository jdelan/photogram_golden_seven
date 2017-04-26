class PhotosController < ApplicationController
  def index
    @all_photos = Photo.order({:created_at => :desc})
    render("/photos/index.html.erb")
  end

  def show

    id_number = params["id_number"]
    @photo = Photo.find(id_number)
    @the_caption = @photo.caption
    @the_image_url = @photo.source
    @created_at = @photo.created_at

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
    @all_photos = Photo.order({:created_at => :desc})
    render("/photos/index.html.erb")
  end

  def edit_form
    @the_photo_to_be_edited = Photo.find(params[:the_id])
    render("/photos/edit_form.html.erb")
  end

  def update_row
    p = Photo.find(params[:the_id])
    p.source = params[:the_source]
    p.caption = params[:the_caption]
    p.save
    redirect_to("/photos")
  end

  def delete_photo
    p = Photo.find(params[:the_id])
    p.destroy
    p.save
    @all_photos = Photo.order({:created_at => :desc})
    redirect_to("/photos")
  end

end
