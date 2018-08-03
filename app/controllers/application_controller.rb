class ApplicationController < Sinatra::Base

 configure do
   set :public_folder, 'public'
   set :views, 'app/views'
 end
 
   get '/' do
   erb :charity_quiz
 end

get '/animal' do
 erb :animals
end


post '/charity' do
 @name = params[:username]
 @answer = params[:q1]

if @answer.to_i == 2
   erb :animals
 else
   erb :human
end
end
 
get '/charity' do
erb :charity
end
end
