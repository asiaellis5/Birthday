require 'sinatra/base'
require './lib/timepiece'

class Birthday < Sinatra::Base
  enable :sessions

  before do
    @timepiece = TimePiece.instance
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:name] = params[:name]
    session[:day] = params[:day]
    session[:month] = params[:month]
    @timepiece = TimePiece.create(session[:day], session[:month])
    @timepiece.today? ? (redirect('/birthday_message')) : (redirect '/countdown')
  end

  get '/birthday_message' do
    @name = session[:name]
    erb(:birthday_message)
  end

  get '/countdown' do
    @name = session[:name]
    @countdown = @timepiece.countdown
    erb(:countdown)
  end
end