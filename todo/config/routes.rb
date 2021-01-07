Rails.application.routes.draw do
  get "/" => "todo#index"

  post "/api/v1/create/todo" => "todo#create"
  post "/api/v1/delete/todo" => "todo#delete"

  get "/playground" => "todo#playground"
end
