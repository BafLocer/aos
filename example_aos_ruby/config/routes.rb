Rails.application.routes.draw do
  resources :assign_user_flags
  resources :assign_plugin_configs
  resources :assign_overrides
  resources :analytics_used_files
  resources :analytics_used_analysables
  resources :analytics_train_samples
  resources :analytics_prediction_actions
  resources :analytics_predict_samples
  resources :analytics_models_logs
  resources :analytics_indicator_calcs
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
