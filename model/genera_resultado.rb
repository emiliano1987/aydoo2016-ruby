class GeneradorDeResultado

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

  def obtenerResultadoDescendente
   @resultado.reverse
  end

  def obtenerResultadoAscendente
   @resultado
  end
end
