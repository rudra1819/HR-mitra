Rails.application.routes.draw do
 devise_for :users, controllers: { passwords: 'users/passwords' }
 root to: 'employees#index'

 scope :'admin' do
  resources :documents ,shallow: true
  resources :employees , shallow: true
  get 'about_us', to: 'pages#about_us'
  get 'contact_us', to: 'pages#contact_us'
  get 'privacy_policy', to: 'pages#privacy_policy'
  get 'terms_and_conditions', to: 'pages#terms_and_conditions'
 end

end
