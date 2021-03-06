Rails.application.routes.draw do
  resources :roles
  resources :sorcerycores
  resources :assignsubmission_files
  resources :assignment_upgrades
  resources :assignment_submissions
  resources :assignfeedback_files
  resources :assignfeedback_editpdf_quicks
  resources :assignfeedback_editpdf_queues
  resources :assignfeedback_editpdf_cmnts
  resources :assignfeedback_editpdf_annots
  resources :assignfeedback_comments
  resources :assign_user_mappings
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

  resources :role_users
  resources :password_resets
  get 'welcome/index', as: :welcome
  get 'welcome/insufficient_privileges', as: :ip
  get 'login' => 'welcome#new', :as => :login
  get 'logout' => 'welcome#destroy', :as => :logout
  post 'try_login' => 'welcome#create', :as => :try_login
  root 'welcome#index'

  resources :users do
    member do
      get :activate
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
