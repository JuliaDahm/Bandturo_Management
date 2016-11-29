Rails.application.routes.draw do
  get ':band_name' => 'customers#onesheet', constraints: lambda { |request| Customer.where(band_name: request.path_parameters[:band_name]).any? }
  
  resources :thanks
  resources :welcome
  resources :customers, except: [:onesheet]  do
    member do 
      get 'onesheet_doc.docx' => 'customers#onesheet_doc', as: 'docx', defaults: { format: 'docx' }
    end 
  end

  root 'welcome#index'
end
