require 'sinatra'
require 'sinatra/reloader'
also_reload 'lib/**/*.rb'
require './lib/triangle'
require 'pry'

get '/' do
  erb(:input)
end

get '/output' do
  @length1 = params.fetch("length1")
  @length2 = params.fetch("length2")
  @length3 = params.fetch("length3")
  triangle = Triangle.new(@length1, @length2, @length3)
  @type = triangle.type()
  erb(:output)
end
