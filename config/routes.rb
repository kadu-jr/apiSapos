Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  resources :forms

  resources :queries

  resources :form_images do
    get 'logo'
  end

  resources :form_templates
end
