require_relative 'config/environment'

class App < Sinatra::Base
  
   get '/user_input' do
    erb :user_input
   end
   
   post '/result' do
     pl = PigLatinizer.new
     @result = pl.piglatinize(params[:user_text])
     
     erb :result
   end
  
end