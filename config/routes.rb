Rails.application.routes.draw do

  get("/", { :controller => "zebra", :action => "index"})

  get("/dice/:cat/:dog", { :controller => "zebra", :action => "giraffe"})

end
