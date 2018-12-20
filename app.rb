require_relative 'config/environment'

configure do
  enable :sessions
  set :session_secret, "secret"
end

class App < Sinatra::Base

  get '/' do

    erb :index
  end

  get '/checkout' do
    binding.pry
    @item = Item.new(params['item'])

    erb :checkout
  end

end
