Rails.application.routes.draw do
  resources :thanks
  resources :welcome
  resources :customers do
    member do 
      get 'onesheet'
      get 'onesheet_doc', format: 'docx'
    end 
  end

  root 'welcome#index'
end
