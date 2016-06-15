require_relative "../model/organiza_salida.rb"
class LecturaDeParametros

  attr_accessor :numero
  attr_accessor :orden
  attr_accessor :formato
  attr_accessor :archivoRuta
  # Se inicializa la clase con los parametros seteados por defecto
  def initialize
    @formato = "--format=pretty"
    @orden = "--sort=asc"
    @archivoRuta = nil;
  end

  # No se ha logrado evitar esta cadena de if. Se ha probado con dos patrones: chain of responsibility y command
  # y ambos no logran resolver el problema por lo que se ha optado en anidar los if
  def lectorDeParametros (argumentos)
    if ((argumentos.length == 0) || (argumentos.length > 4))
      raise ArgumentError, "Ha ingresado un numero incorrectos de parametros"
    else
      argumentos.each do |valores|

        if (esUnNumero?(valores))
          @numero = valores
        elsif ((valores.downcase.include? "--format=quiet") || (valores.downcase.include? "--format=pretty"))
          @formato = valores.downcase
        elsif ((valores.downcase.include? "--sort=des") || (valores.downcase.include? "--sort=asc"))
          @orden = valores.downcase
        elsif (valores.downcase.include? "--output-file=")
          @archivoRuta = valores[14..-1]
	else
	  raise ArgumentError, "El parametro #{"valores"}es incorrecto"
        end
      end
    end
  end

  #Verifica si el valor que se ingresa es un numero. En caso negativo devuelve false
  def esUnNumero?(valor)
    valor.to_s.match(/\A[+-]?\d+?(\.\d+)?\Z/) == nil ? false : true
  end

end
