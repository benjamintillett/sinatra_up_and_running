require 'sinatra'

get "/public.html" do 
	"This is delivered via a route"
end


get "/" do 
	erb :index
end

get "/:name" do 
	"Hello, #{params[:name]} and also #{params[:name2]} from the query string"
end

get "/*" do 
	"you passed in #{params[:splat]}"
end