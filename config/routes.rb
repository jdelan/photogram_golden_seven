Rails.application.routes.draw do

    get("/photos/:id_number", {:controller => "photos", :action => "show"})
    get("/photos", {:controller => "photos", :action => "index"})

end
