Rails.application.routes.draw do
  root 'pages#home'
  resources :key_words
  resources :tweets, only: [:create]
end
