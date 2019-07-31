Rails.application.routes.draw do
  resources :urls
  get '/urls' => 'urls#index'
  get '/:shortened' => 'urls#show'
end
