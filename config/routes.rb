Rails.application.routes.draw do


  resources :employees

  resources :companies do
    collection { post :import }
  end

  devise_for :users
  get 'welcome/index'
  get 'welcome/about'
  get 'welcome/contact'
  get 'welcome/faq'
  get 'welcome/pricing'
  get 'welcome/features'

  resources :invoices do
    resources :purchases, except: [:index], controller: 'invoices/purchases'
  end #invoices has resources, because resources uses a REST, integrated approach to routing for certain actions. This is for classic resources only.
  
  root to: 'welcome#index' #root is the homepage. We need the name of the controller and the # sign with the method name.

end
