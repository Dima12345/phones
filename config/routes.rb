Rails.application.routes.draw do
  get '/api' => redirect('/swagger/dist/index.html?url=/apidocs/api-docs.json')
  namespace :api do
    namespace :v1 do
      namespace :swagger do
        resources :phones, only: [:create]
      end
    end
  end
end
