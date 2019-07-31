Rails.application.routes.draw do
  resources :urls
  get '/:shortened' => 'urls#show'
end
