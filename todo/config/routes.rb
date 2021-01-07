Rails.application.routes.draw do
  get "/" => "todo#index"

  get "/api/v1/create/todo" => "todo#create"
  get "/api/v1/delete/todo" => "todo#delete"

  get "/playground" => "todo#playground"
end
