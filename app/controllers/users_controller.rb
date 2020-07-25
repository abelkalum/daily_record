class UsersController < ApplicationController

  get '/signup' do
    redirect_if_logged_in
    erb :signup
  end

  post '/users' do
    @user = User.new(params)
    if @user.save
      session[:user_id] = @user.id

      redirect "/users/#{@user.id}"
    else
      redirect '/signup'
    end
  end
  
  get '/login' do
    redirect_if_logged_in
    erb :login
  end

  post '/login' do
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id

      redirect "users/#{@user.id}"
    else
      redirect '/login'
    end
  end

  get '/users/:id' do
    @user = User.find_by(id: params[:id])
    redirect_if_not_logged_in

    erb :'/users/show'
  end

  get '/logout' do
    session.clear
    redirect '/'
  end

end