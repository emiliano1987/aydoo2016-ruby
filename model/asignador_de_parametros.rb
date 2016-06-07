class AsignadorDeParametros

 def asigna(esValidoElFormato, arregloDeNumeros)

  if esValidoElFormato == true
    parametro = FormatoPretty.new
    parametro.generadorEstiloPretty(arregloDeNumeros)
  else
    parametro = FormatoQuite.new
    parametro.generadorEstiloQuite(arregloDeNumeros)
 end

end
end


