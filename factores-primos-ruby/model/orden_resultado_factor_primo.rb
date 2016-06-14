require_relative "../model/genera_resultado.rb"

class OrdenDeFactorPrimo

  attr_accessor :numerosPrimos
  
  def ordenarFactorPrimo(string,numero)
    if string == "--sort=des"
      numeroFactoresPrimos = GeneradorDeResultado.new
      numeroFactoresPrimos.calculaResultadoFactoresPrimos(numero)
      @numerosPrimos = numeroFactoresPrimos.obtenerResultadoDescendente
    else
      numeroFactoresPrimos = GeneradorDeResultado.new
      numeroFactoresPrimos.calculaResultadoFactoresPrimos(numero)
      @numerosPrimos = numeroFactoresPrimos.obtenerResultadoAscendente
    end
  end
  
  def numerosPrimos
    @numerosPrimos
  end

end