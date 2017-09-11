Rails.application.routes.draw do
  

  post '/', to: 'index#new'
  get '/p/:id' , to: 'index#show'
  root 'index#home'

end
