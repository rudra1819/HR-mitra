Rails.application.routes.draw do
  devise_for :users
  
resources :employees
resources :documents

root "employees#index"
  get 'about'=>"pages#about_us"
  get "contact_us"=>"pages#contact_us"
  get "privacy_policy"=>"pages#privacy_policy"
  get "terms"=>"pages#terms_and_conditon"
  get "pages/and"
  get "pages/conditions"
  get "home"=>"home/create"
end
