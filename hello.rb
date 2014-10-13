require 'sinatra'

require "./sinatra/post_get"

get "/" do 
	erb :index
end

post_get "/" do
	"High #{params[:name]}"
end

