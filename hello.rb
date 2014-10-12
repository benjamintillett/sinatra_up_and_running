require 'sinatra'

before do 
	@before_value = "foo"
end

configure do
 	set :show_exceptions, false
end

not_found do
	 "Whoops! You requested a route that wasn't available."
end

get "/show_before" do 
	"before value has been set to #{@before_value}"
end

get '/div_by_zero' do
	 0 / 0
 	"You won't see me."
end

error do
 	"Y U NO WORK?"
end
