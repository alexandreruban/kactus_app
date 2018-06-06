Rails.application.routes.draw do
  root 'pages#home'
  resources :key_words
end
