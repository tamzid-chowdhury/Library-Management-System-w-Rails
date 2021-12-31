Rails.application.routes.draw do
  get 'patron/index'
  get 'patron/search_results'
  get 'administrator/index'
  get 'administrator/search'
  get 'administrator/search_results'
  get 'welcome/index'
  resources :books do
    get "checkout"
    resources :reviews 
  end
  root 'welcome#index'
end
