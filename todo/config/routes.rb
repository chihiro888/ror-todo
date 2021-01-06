Rails.application.routes.draw do
  get "/", to: "todo#index"
end
