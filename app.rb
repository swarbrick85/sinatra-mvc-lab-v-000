require_relative 'config/environment'

class App < Sinatra::Base
  
   get '/user_input' do
    erb :user_input
   end
   
   post '/result' do
     
     erb :result
   end
  
end