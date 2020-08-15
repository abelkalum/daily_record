class UsersController < ApplicationController

  get '/signup' do
    erb :signup
  end
  
  post '/signup' do
    @user = User.new(params)
    if @user.save
      session[:user_id] = @user.id

      redirect '/login'
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
      flash[:errors] = "Invalid login! Please try again."
      
      redirect '/login'
    end
  end

  get '/users/:id' do
    @user = User.find_by(id: params[:id])

    erb :'/users/show'
  end

  get '/logout' do
    session.clear
    redirect '/'
  end

end