Rails.application.routes.draw do
  resources :editor_atto_autosaves
  resources :config_plugins
  resources :configs
  resources :config_logs
  resources :comments
  resources :cache_flags
  resources :cache_filters
  resources :posts
  resources :blog_associations
  resources :blog_externals
  resources :blog_externals 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
