Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  get '/auth/:provider/callback', :to => 'sessions#facebook'
end
