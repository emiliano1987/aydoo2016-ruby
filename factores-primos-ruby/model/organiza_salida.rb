require_relative "../model/lectura_de_parametros.rb"
require_relative "../model/orden_resultado_factor_primo.rb"
require_relative "../model/imprime_salida.rb"

class OrganizaSalida
  attr_accessor :lector
  def defineParamertos (argumentos)
    @lector = LecturaDeParametros.new
    @lector.lectorDeParametros(argumentos)

    ordenarFactorPrimo = OrdenDeFactorPrimo.new
    ordenarFactorPrimo.ordenarFactorPrimo(@lector.orden,@lector.numero.to_i)

    imprimir = ImprimeSalida.new
    if @lector.archivoRuta == nil
    imprimir.generarSalidaPorPantalla(@lector.formato,@lector.numero,ordenarFactorPrimo.numerosPrimos)
    else
    imprimir.generarSalidaPorArchivo(@lector.archivoRuta,@lector.formato,ordenarFactorPrimo.numerosPrimos)

    end
  end

end