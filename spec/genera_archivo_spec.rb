require 'rspec'
require_relative '../model/genera_archivo.rb'
class GeneradorDeArchivoSpec
  describe 'GeneradorDeArchivo' do

    it 'ArchivoGenerado' do
      archivo = GeneradorDeArchivo.new
      ruta = "prueba.txt"
      archivo.generaArchivoEnRuta(ruta)
      expect(File.exist?(ruta) == true)
    end

  end
end
