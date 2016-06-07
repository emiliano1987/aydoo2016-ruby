require 'rspec'
require_relative '../model/lectura_de_parametros.rb'
class LecturaDeParametrosSpec
  describe 'LecturaDeParametros' do

    it 'Argumento correcto' do
      string = "--format=pretty"
      argumentos = LecturaDeParametros.new
      expect(argumentos.lectorDeParametros(string)) == ("--format=pretty")
    end

    it 'Argumento correcto' do
      string = "--format=quite"
      argumentos = LecturaDeParametros.new
      expect(argumentos.lectorDeParametros(string)) == ("--format=quite")
    end

  end
end
