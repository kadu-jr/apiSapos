Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  resources :forms do
    get 'delete'
  end

  resources :queries do
    get 'delete'
  end

  resources :form_images do
    get 'logo'
    get 'delete'
  end

  resources :form_templates do
    get 'delete'
  end
end
