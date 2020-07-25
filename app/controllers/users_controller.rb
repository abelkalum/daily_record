class UsersController < ApplicationController
 
  get '/signup' do
    erb :signup
  end
  
  post '/signup' do
    redirect '/login'
  end
  
  get '/login' do
    erb :login
  end
  
  post '/login' do
    redirect "users/#{@user.id}"
  end
end