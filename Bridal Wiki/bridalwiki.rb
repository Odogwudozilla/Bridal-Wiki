require 'sinatra'


$myinfo = "Chidozie Nnachor"
@info = ""

get'/' do
  info = "Hello there!"
  @info = info + "" + $myinfo
  erb:layout
end

get '/about' do
  erb:about
end


get '/notfound' do
  erb:notfound
end


not_found do
  status 404
  redirect '/notfound'
end
