Rails.application.routes.draw do
  get "/" => "todo#index"
  get "/playground" => "todo#playground"
end
