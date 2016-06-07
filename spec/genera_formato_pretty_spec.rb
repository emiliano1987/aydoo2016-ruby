require 'rspec'
require_relative '../model/genera_formato_pretty.rb'
class FormatoPrettySpec
  describe 'FormatoPretty' do

    it 'Factores Primos descendente en formato Pretty 360: 2 2 2 3 3 5' do
      arreglo = [2,2,2,3,3,5]
      valorEsperado = "2 2 2 3 3 5"
      valorPretty = FormatoPretty.new
      expect(valorPretty.generadorEstiloPretty(arreglo)==(valorEsperado))
    end
    
   it 'Factores Primos ascendente en formato Quite 360: 2 2 2 3 3 5' do
      valorEsperado = "5 3 3 2 2 2"
      valorPretty = FormatoPretty.new
      generaResultado = GeneradorDeResultado.new
      generaResultado.calculaResultadoFactoresPrimos(360)
      resultadoFinal = generaResultado.obtenerResultadoDescendente
      expect(valorPretty.generadorEstiloPretty(resultadoFinal)==(valorEsperado))
    end
  end
end
