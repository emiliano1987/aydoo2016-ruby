require_relative '../model/asignador_de_parametros.rb'
class LecturaDeParametros

 def lectorDeParametros (string)
 case string
 when "--format=pretty"
  formatoPretty = true; 
 when "--format=quite"
  formatoPretty = false;
 when "--output="
  generaArchivo = true
 when "--sort=desc"

 when "--sort=asc"

 else
  "Formato No Aceptado. Las opciones posibles son pretty o quiet"
  formatoNoValido = true
 end
 if formatoNoValido == false
 asignador = AsignadorDeParametros.new
 asignador.asigna(formatoValido) 
 end
end
end
