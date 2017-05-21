require 'sinatra'
require_relative './model/saludo'

get '/chau' do
  s = Saludo.new
  s.hola
end

post '/hola' do
  "hola: #{params['nombre']}"
end