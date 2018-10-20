Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: "callbacks" }

  root to: "welcome#index"

  resources :dashboard
  get "get_follower_gists/:login", to: "dashboard#get_follower_gists", as: "get_follower_gists"
  get "gist_content(/:gistid)", to: "dashboard#gist_content", as: "gist_content"
  put "star_gist(/:gistid)", to: "dashboard#star_gist", as: "star_gist"
  put "unstar_gist(/:gistid)", to: "dashboard#unstar_gist", as: "unstar_gist"
end
