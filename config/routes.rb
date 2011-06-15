Marker::Application.routes.draw do
  get "pages/home"
  get "pages/contact"

  resources :users
  resources :bookmarks
end
