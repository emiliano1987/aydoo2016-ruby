require 'rspec'
require_relative '../model/genera_resultado'
class GeneradorDeResultadoSpec
  describe 'GeneradorDeResultado' do

    it 'Factores Primos descendente 360: 2 2 2 3 3 5' do
      generaResultado = GeneradorDeResultado.new
      generaResultado.calculaResultadoFactoresPrimos(360)
      resultadoFinal = generaResultado.obtenerResultadoDescendente
      arreglo = [2,2,2,3,3,5]      
      expect(resultadoFinal).to match_array(arreglo)
    end

    it 'Factores Primos ascendente 360: 5 3 3 2 2 2' do
      generaResultado = GeneradorDeResultado.new
      generaResultado.calculaResultadoFactoresPrimos(360)
      resultadoFinal = generaResultado.obtenerResultadoAscendente
      arreglo = [5,3,3,2,2,2]
      expect(resultadoFinal).to match_array(arreglo)
    end

  end
end
