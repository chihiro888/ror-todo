Rails.application.routes.draw do
  get "/" => "todo#index"
  
  get "/api/v1/read/todo" => "todo#read"
  post "/api/v1/create/todo" => "todo#create"
  post "/api/v1/delete/todo" => "todo#delete"
  post "/api/v1/update/todo" => "todo#update"

  get "/api/v1/read/user" => "user#read"
  post "/api/v1/create/user" => "user#create"
  post "/api/v1/login/user" => "user#login"

  get "/playground" => "todo#playground"
end
