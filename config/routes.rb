Rails.application.routes.draw do
  post '/new_likes', to: 'likes#create'
  get '/show_likes', to: 'likes#show'
end
