Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get("/", {:controller => "application", :action => "additionForm"})
  get("/add", {:controller => "application", :action => "additionForm"})
  get("/wizard_add", {:controller => "application", :action => "additionRes"})
  
  get("/subtract", {:controller => "application", :action => "subtractionForm"})
  get("/wizard_subtract", {:controller => "application", :action => "subtractionRes"})

end
