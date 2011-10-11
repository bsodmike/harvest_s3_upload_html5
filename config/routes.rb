CoreApp::Application.routes.draw do

  root :to => 'public#index'
  resources :s3_uploads, :only => [:create]

end
