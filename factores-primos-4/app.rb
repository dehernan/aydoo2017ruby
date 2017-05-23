require 'sinatra'
require_relative './model/factorsCalculator'

get '/primos' do
  begin
  	number = params[:x]
  	factorsCalculator = FactorsCalculator.new
  	factors = factorsCalculator.getPrimeNumbers(number, 'desc')
  	"#{factors}"
  rescue Exception
  	return '400'
  end
end

post '/primos' do
  begin
  	number = params[:x]
  	factorsCalculator = FactorsCalculator.new
  	factors = factorsCalculator.getPrimeNumbers(number, 'asc')
  	"#{factors}"
  rescue Exception
  	return '400'
  end
end