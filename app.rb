require_relative 'config/environment'

class App < Sinatra::Base
  
   get '/' do
    erb :user_input
   end
   
   post '/result' do
     pl = PigLatinizer.new
     
     erb :result
   end
  
end