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

get("/square_root/results") do
  @input = params.fetch("number").to_f

  @root = @input ** 0.5

erb(:square_root_results)
end

get("/random/new") do
  erb(:random)
end

get("/random/results") do
  @minimum = params.fetch("user_min").to_f
  @maximum = params.fetch("user_max").to_f

  @random_number = rand(@minimum..@maximum).to_f
  erb(:random_results)
end
