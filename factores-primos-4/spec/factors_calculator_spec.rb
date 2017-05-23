require 'rspec' 
require_relative '../model/factorsCalculator'

describe 'FactorsCalculator' do

  let(:calculator) { FactorsCalculator.new }  

  #Se prueba la obtención de los factores de un número
  it 'Si recibe 90, debería devolver [2,3,3,5]' do
    expect(calculator.obtainFactors(90)).to eq [2,3,3,5]
  end
  
  it 'Si recibe 360, debería devolver [2,2,2,3,3,5]' do
    expect(calculator.obtainFactors(360)).to eq [2,2,2,3,3,5]
  end

  it 'Si recibe 0, debería devolver un array vacío' do
    expect(calculator.obtainFactors(0)).to eq []
  end

  it 'Si recibe -90, debería devolver un array vacío' do
    expect(calculator.obtainFactors(-90)).to eq []
  end

  #Se prueba la obtención de números primos en formato string, en orden descendente
  it 'Si recibe 90 en orden desc, debería devolver 5,3,3,2' do
    expect(calculator.getPrimeNumbers('90', 'desc')).to eq '5,3,3,2'
  end
  
  it 'Si recibe 360 en orden desc, debería devolver 5,3,3,2,2,2' do
    expect(calculator.getPrimeNumbers('360', 'desc')).to eq '5,3,3,2,2,2'
  end

  #Se prueba la obtención de números primos en formato string, en orden ascendente
  it 'Si recibe 90 en orden asc, debería devolver 2,3,3,5' do
    expect(calculator.getPrimeNumbers('90', 'asc')).to eq '2,3,3,5'
  end
  
  it 'Si recibe 360 en orden asc, debería devolver 2,2,2,3,3,5' do
    expect(calculator.getPrimeNumbers('360', 'asc')).to eq '2,2,2,3,3,5'
  end

end
