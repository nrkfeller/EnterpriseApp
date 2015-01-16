Rails.application.routes.draw do
  get 'welcome/index'
  get 'welcome/about'
  get 'welcome/contact'
  get 'welcome/faq'
  get 'welcome/pricing'
  get 'welcome/features'

  resources :invoices #invoices has resources, because resources uses a REST, integrated approach to routing for certain actions. This is for classic resources only.
  
  root to: 'welcome#index' #root is the homepage. We need the name of the controller and the # sign with the method name.

end
