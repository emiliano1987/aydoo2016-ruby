class GeneradorDeResultado

  attr_accessor :resultado

  def calculaResultadoFactoresPrimos(valorIngresado)
    @resultado = Array.new
    if valorIngresado == 1
      @resultado << 1
    end
    for valorDivisible in 2..valorIngresado
      while valorIngresado%valorDivisible == 0
        valorIngresado = valorIngresado/valorDivisible
        @resultado << valorDivisible
      end
    end
  end

# En caso de que sort=des
  def obtenerResultadoDescendente
   @resultado.reverse
  end
# Resultado por defecto o en caso de que se ingrese sort=asc
  def obtenerResultadoAscendente
   @resultado
  end
end