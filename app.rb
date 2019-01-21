require_relative 'config/environment'

class App < Sinatra::Base
  
   get '/' do
    erb :user_input
   end
   
   post '/result' do
     pl = PigLatinizer.new
     result = pl.piglatinize(params[:user_input])
     
     erb :result
   end
  
end