ENV['RACK_ENV'] ||= 'development'

require 'sinatra/base'
require './models/link'

class BookmarkManager < Sinatra::Base
  # enable :sessions
  # set :session_secret, "here be dragons"
  run! if app_file == $0

  get '/links' do
    @links = Link.all
    erb :'links/index'
  end

  get '/links/new' do
    erb :'links/new'
  end

  post '/links' do
    Link.create(url: params[:url], title: params[:title])
    redirect '/links'
  end
end
