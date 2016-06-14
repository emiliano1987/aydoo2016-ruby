require 'rspec'

require_relative '../model/organiza_salida'
class OrganizaSalidaSpec
  describe 'OrganizaSalida' do

    it 'Imprime Archivo OrganizaSalidaFactorPrimo20.txt Factor Primo 20: 2 2 5' do
      salidaDeParametros = OrganizaSalida.new
      parametros = [20,"--format=quiet","--output-file=OrganizaSalidaFactorPrimo20.txt"]
      salidaDeParametros.defineParamertos(parametros)
      expect(File.file?("OrganizaSalidaFactorPrimo20.txt"))
    end

    it 'Imprime Archivo OrganizaSalidaFactorPrimo10.txt Factor Primo 10: 5 2' do
      salidaDeParametros = OrganizaSalida.new
      parametros = [10,"sort=des","--output-file=OrganizaSalidaFactorPrimo10.txt"]
      salidaDeParametros.defineParamertos(parametros)
      expect(File.file?("OrganizaSalidaFactorPrimo10.txt"))
    end

    it 'Imprime Archivo OrganizaSalidaFactorPrimo200.txt Factor Primo 200: 2 2 2 5 5' do
      salidaDeParametros = OrganizaSalida.new
      parametros = [200,"sort=des","--format=pretty","--output-file=OrganizaSalidaFactorPrimo200.txt"]
      salidaDeParametros.defineParamertos(parametros)
      expect(File.file?("OrganizaSalidaFactorPrimo200.txt"))
    end

    it 'Imprime Archivo OrganizaSalidaFactorPrimo44.txt Factor Primo 44: 2 2 11' do
      salidaDeParametros = OrganizaSalida.new
      parametros = [44,"--output-file=OrganizaSalidaFactorPrimo44.txt"]
      salidaDeParametros.defineParamertos(parametros)
      expect(File.file?("OrganizaSalidaFactorPrimo44.txt"))
    end
  end
end
