Rails.application.routes.draw do
  get 'welcome/index'
  
  resources :todolists do
    collection do
      get "/order/:orderby", to: "todolists#index", as: "orderby"
    end
    member do
      patch 'complete'
      patch 'incomplete'
    end
  end

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
