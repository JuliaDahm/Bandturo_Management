Rails.application.routes.draw do
  resources :thanks
  resources :welcome
  resources :customers do
    member do 
      get 'onesheet_doc.docx' => 'customers#onesheet_doc', as: 'docx', defaults: { format: 'docx' }
      get 'onesheet'
    end 
  end

  root 'welcome#index'
end
