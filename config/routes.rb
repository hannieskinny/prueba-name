Exam6th::Application.routes.draw do
  root :to => "comments#index"
  resources :comments
end
