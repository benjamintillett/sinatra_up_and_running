require 'sinatra'

get "/" do 
	"hello!"
end

get "/:name" do 
	"Hello, #{params[:name]} and also #{params[:name2]} from the query string"
end