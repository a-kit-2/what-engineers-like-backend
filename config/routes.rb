Rails.application.routes.draw do
  post '/new_like', to: 'likes#create'
  get '/show_likes', to: 'likes#show'
end
