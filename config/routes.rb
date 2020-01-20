Rails.application.routes.draw do



  devise_for :users, controllers: {
    registrations: 'users/registrations',
  }
  # devise_scope :user do
  #   get 'addresses', to: 'users/registrations#new_register'
  #   post 'addresses', to: 'users/registrations#create_register'
  # end
  root 'post#index'

  resources :items do
    member do
      get 'show'
      get 'step2'
      get 'step3'
      get 'step4'
      get 'step5'
      get 'step6'
      get 'done'
    end
  end

  resources :signup do
    collection do
      get 'step1'
      get 'step2'
      get 'step3'
      get 'step4'
      get 'step5'
      get 'step6'
      get 'done'
    end
  end
  
  resources :mypage do
    collection  do
      get 'index'
      get 'identification'
      get 'credit_card'
      get 'user_profile'
      get 'logout'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
