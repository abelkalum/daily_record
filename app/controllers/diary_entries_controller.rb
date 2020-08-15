class DiaryEntriesController < ApplicationController

  get '/diary_entries' do
    @diary_entries = DiaryEntry.all
    
    erb :'diary_entries/index'
  end

  get '/diary_entries/new' do
    erb :'/diary_entries/new'
  end

  post '/diary_entries' do
    if params[:content] != ""
      @diary_entry = DiaryEntry.create(content: params[:content], user_id: current_user.id, title: params[:title])
      redirect "/diary_entries/#{@diary_entry.id}"
    else
      redirect '/diary_entries/new'
    end
  end

  get '/diary_entries/:id' do
    set_diary_entry
    @diary_entry = DiaryEntry.find(params[:id])
    
    erb :'/diary_entries/show'
  end

  get '/diary_entries/:id/edit' do
    set_diary_entry
    if authorized_to_edit?(@diary_entry)
      erb :'/diary_entries/edit'
    else
      redirect "users/#{current_user.id}"
    end
  end

  patch '/diary_entries/:id' do
    set_diary_entry
    if @diary_entry.user == current_user && params[:content] != ""
      @diary_entry.update(content: params[:content])
      @diary_entry.update(title: params[:title])
      redirect "/diary_entries/#{@diary_entry.id}"
    else
      redirect "users/#{current_user.id}"
    end
  end

  delete '/diary_entries/:id' do
    set_diary_entry
    if authorized_to_edit?(@diary_entry)
      @diary_entry.destroy
      redirect '/diary_entries'
    else
      redirect "users/#{current_user.id}"
    end
  end

  private

  def set_diary_entry
    @diary_entry = DiaryEntry.find(params[:id])
  end
end