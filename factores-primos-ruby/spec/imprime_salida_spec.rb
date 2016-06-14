require 'rspec'

require_relative '../model/imprime_salida.rb'
class ImprimeSalidaSpec
  describe 'ImprimeSalida' do

    it 'Imprime Archivo de Factor Primo 88 en formato quite ascendente' do
      imprimeSalidaEnArchivo = ImprimeSalida.new
      arreglo = [2,2,2,11]
      imprimeSalidaEnArchivo.generarSalidaPorArchivo("factorPrimo88.txt","--format=quiet",arreglo)
      expect(File.file?("prueba.txt"))
    end

    it 'Imprime Archivo de Factor Primo 35 en formato quite descendente' do
      imprimeSalidaEnArchivo = ImprimeSalida.new
      arreglo = [7,5]
      imprimeSalidaEnArchivo.generarSalidaPorArchivo("factorPrimo35.txt","--format=quiet",arreglo)
      expect(File.file?("factorPrimo35.txt"))
    end

    it 'Imprime Archivo de Factor Primo 56 en formato pretty ascendente' do
      imprimeSalidaEnArchivo = ImprimeSalida.new
      arreglo = [2,2,2,7]
      imprimeSalidaEnArchivo.generarSalidaPorArchivo("factorPrimo56.txt","--format=pretty",arreglo)
      expect(File.file?("factorPrimo56.txt"))
    end

    it 'Imprime Archivo de Factor Primo 23 en formato pretty descendente' do
      imprimeSalidaEnArchivo = ImprimeSalida.new
      arreglo = [23]
      imprimeSalidaEnArchivo.generarSalidaPorArchivo("factorPrimo23.txt","--format=pretty",arreglo)
      expect(File.file?("factorPrimo23.txt"))
    end

    it 'Imprime Archivo de Factor Primo 310 en formato pretty descendente' do
      imprimeSalidaEnArchivo = ImprimeSalida.new
      arreglo = [2,5,31]
      imprimeSalidaEnArchivo.generarSalidaPorArchivo("factorPrimo310.txt","",arreglo)
      expect(File.file?("factorPrimo10.txt"))
    end
  end
end
