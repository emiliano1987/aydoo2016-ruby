require 'rspec'

require_relative '../model/orden_resultado_factor_primo.rb'
class OrdenDeFactorPrimoSpec
  describe 'OrdenDeFactorPrimo' do

    it 'Orden descendente Factor Primo 360: 5 3 3 2 2 2' do
      ordenaFactorPrimo = OrdenDeFactorPrimo.new
      ordenaFactorPrimo.ordenarFactorPrimo("--sort=des",360)
      arreglo = [5,3,3,2,2,2]
      expect(ordenaFactorPrimo.numerosPrimos).to eql(arreglo)
    end

    it 'Orden ascendente Factor Primo 50: 2 5 5' do
      ordenaFactorPrimo = OrdenDeFactorPrimo.new
      ordenaFactorPrimo.ordenarFactorPrimo("--sort=asc",50)
      arreglo = [2,5,5]
      expect(ordenaFactorPrimo.numerosPrimos).to eql(arreglo)
    end

    it 'Sin ingresar orden Factor Primo 30: 2 3 5' do
      ordenaFactorPrimo = OrdenDeFactorPrimo.new
      ordenaFactorPrimo.ordenarFactorPrimo("",30)
      arreglo = [2,3,5]
      expect(ordenaFactorPrimo.numerosPrimos).to eql(arreglo)
    end
    
    it 'Orden descendente Factor Primo 10: 5 2' do
      ordenaFactorPrimo = OrdenDeFactorPrimo.new
      ordenaFactorPrimo.ordenarFactorPrimo("--sort=des",10)
      arreglo = [5,2]
      expect(ordenaFactorPrimo.numerosPrimos).to eql(arreglo)
    end
  end
end
