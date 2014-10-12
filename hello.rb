require 'sinatra'

configure do 
	mime_type :plain, "text/plain"
end

before "/plain-text" do 
	content_type :plain
end 

get "/html" do
	"<h1>You should see this as html text</h1>"
end

get "/plain-text" do
	"<h1>You should see this as plane text</h1>"
end