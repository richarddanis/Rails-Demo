Rails.application.routes.draw do

  # For details, see https://guides.rubyonrails.org/routing.html 

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      # you can defining multiple resource at same time
      # define the id parameter constraints
      resources :demo
      # /profile -> return api/v1/demo (GET) result
      get 'profile', to: 'demo#index'
    end
  end

  # redirect with 302 to not cache result
  get '/stories', to: redirect('/api/v1/demo#index', status: 302)

end
