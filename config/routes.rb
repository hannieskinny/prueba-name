Exam6th::Application.routes.draw do
  root :to => "comments#index"
  resources :comments
  
  namespace :api do
    namespace :v1 do
      resources :comments, defaults: { format: 'json' }
    end
  end

end
