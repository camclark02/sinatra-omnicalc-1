require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end

get("/square/new") do

erb(:square)
end

get("/square/results") do
  @the_num = params.fetch("number").to_f

  @the_square = @the_num ** 2
erb(:square_results)
end

get("/square_root/new") do

  erb(:square_root)
end
