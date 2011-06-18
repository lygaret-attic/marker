class PageExists
  def matches?(request)
    PagesController.new.respond_to? request.path_parameters()[:action]
  end
end

Marker::Application.routes.draw do
  devise_for :users

  get "pages/home"
  get "pages/contact"
  get "pages/about"

  resources :users
  resources :bookmarks

  root :to => "pages#home"

  get '/:action', :controller => 'pages', :constraints => PageExists.new
  get '*' => 'pages#notfound'
end
