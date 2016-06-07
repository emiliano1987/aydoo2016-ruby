require 'rspec'
require_relative '../model/genera_formato_quite.rb'
class FormatoQuiteSpec
  describe 'FormatoQuite' do

    it 'Factores Primos descendente en formato Quite 360: 2 2 2 3 3 5' do
      arreglo = [2,2,2,3,3,5]
      resultadoEsperado = "2 2 2 3 3 5"
      valorQuite = FormatoQuite.new
      expect(valorQuite.generadorEstiloQuite(arreglo)==(resultadoEsperado))
    end
    
    it 'Factores Primos ascendente en formato Quite 360: 2 2 2 3 3 5' do
      resultadoEsperado = "5 3 3 2 2 2"
      valorQuite = FormatoQuite.new
      generarResultado = GeneradorDeResultado.new
      generarResultado.calculaResultadoFactoresPrimos(360)
      resultadoFinal = generarResultado.obtenerResultadoDescendente
      expect(valorQuite.generadorEstiloQuite(resultadoFinal)==(resultadoEsperado))
    end

  end
end
