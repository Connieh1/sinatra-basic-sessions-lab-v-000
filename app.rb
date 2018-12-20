require_relative 'config/environment'

configure do
  enable :sessions
  set :session_secret, "secret"
end

class App < Sinatra::Base

  get '/' do

    erb :index
  end

  post '/checkout' do
    # binding.pry

    @item = Item.new(params[:item])



    @items = Item.all

    @session = session(params[:item])
    
    erb :checkout
  end

end
