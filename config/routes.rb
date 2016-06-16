#require "monban/constraints/signed_in"
#require "monban/constraints/signed_out"

Rails.application.routes.draw do
  
  
  resources :locations
  resources :surveys
  resources :survey_items
  resources :survey_questions
=begin
  constraints Monban::Constraints::SignedIn.new do
    root "businesses#show", as: :dashboard
  end

  constraints Monban::Constraints::SignedOut.new do
    root 'welcome#index'
  end
=end
  
  resource :session
  resources :biz_users
  root 'sessions#new'
  
  
  
    resources :inquiry_basics, controller: 'business_inquiry/inquiry_basics'

  resources :inquiry_answers
#  resource :business
  resources :businesses do
    resources :biz_users, shallow: true
    resources :inquiry_questions, shallow: true
    resources :survey_questions, shallow: true
    resources :inquiries, shallow: true do
      resources :locations, shallow: true
      resources :users, shallow: true do
        resources :addresses, shallow: true
      end
    end
    
    collection do
      get 'biz_init'
    end
  end
  resources :businesses do
    resources :inquiries do
      resources :inquiry_qn_as
      resources :surveys
    end
  end
  resources :inquiries
  resources :users

    
    
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
