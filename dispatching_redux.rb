require 'sinatra'
get '/example' do
 'go to /inspect/example'
end
get '/inspect/*' do
 route = "/" + params[:splat].first
 data = call env.merge("PATH_INFO" => route)
 
end
