require_relative "../model/organiza_salida.rb"
class Programa
  attr_accessor :parametroEntrada
  
  @parametroEntrada = ARGV
  @lector = OrganizaSalida.new
  @lector.defineParamertos(@parametroEntrada)

end