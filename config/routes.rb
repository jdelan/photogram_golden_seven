Rails.application.routes.draw do

# Give Home page
  get("/", {:controller => "photos", :action => "index"})

  #CREATE
  get("/photos/new", {:controller => "photos", :action => "new_form"})
  get("/create_photo", {:controller => "photos", :action => "create_row"})

  #READ
  get("/photos/:id_number", {:controller => "photos", :action => "show"})
  get("/photos", {:controller => "photos", :action => "index"})

  #UPDATE
  get("/photos/update_photo/:the_id", {:controller => "photos", :action => "update_row"})
  get("/photos/:the_id/edit", {:controller => "photos", :action => "edit_form"})
  #DELETE
  get("/delete_photo/:the_id", {:controller => "photos", :action => "delete_photo"})


end
