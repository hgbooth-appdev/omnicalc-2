Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get("/", {:controller => "application", :action => "additionForm"})
  get("/add", {:controller => "application", :action => "additionForm"})
  get("/wizard_add", {:controller => "application", :action => "additionRes"})
  
  get("/subtract", {:controller => "application", :action => "subtractionForm"})
  get("/wizard_subtract", {:controller => "application", :action => "subtractionRes"})
  
  get("/multiply", {:controller => "application", :action => "multiplicationForm"})
  get("/wizard_multiply", {:controller => "application", :action => "multiplicationRes"})

  get("/divide", {:controller => "application", :action => "divideForm"})
  get("/wizard_divide", {:controller => "application", :action => "divideRes"})
  

  get("/street_to_coords/new", {:controller => "application", :action => "streetForm"})
  get("/street_to_coords/results", {:controller => "application", :action => "streetRes"})

  get("/coords_to_weather/new", {:controller => "application", :action => "weatherForm"})
  get("/coords_to_weather/results", {:controller => "application", :action => "weatherRes"})




end
