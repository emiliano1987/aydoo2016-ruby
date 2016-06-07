require 'rspec'
require_relative '../model/carga_archivo'
class CargaDeDatosEnArchivoSpec
  describe 'CargaDeDatosEnArchivo' do

    it 'ArchivoGenerado' do
      archivo = GeneradorDeArchivo.new
      arreglo = [2,2,2,3,3,5]
      ruta = "pruebaPretty.txt"
      nuevoParametro = CargaDeDatosEnArchivo.new
      nuevoParametro.cargaDatos(ruta,arreglo)
      expect(File.exist?(ruta) == true)
    end

  end
end
