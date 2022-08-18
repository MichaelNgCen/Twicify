Rails.application.routes.draw do
    root to: "static_pages#root"
    
    namespace :api, defaults: {format: :json} do 
      resources :users, only: [:create, :show, :index] do
        get :playlists, to: "likes#fetch_liked_playlists", as: "fetch_liked_playlists"
      end
      
      resource :session, only: [:create, :destroy]

      resources :playlists, only: [:create, :update, :destroy, :index, :show] 
  
    end
  end
  