class CargaDeDatosEnArchivo

 def cargaDatos(rutaArchivo,arregloDeNumeros)
    archivo = GeneradorDeArchivo.new
    ruta = archivo.generaArchivoEnRuta(rutaArchivo)
    File.open(ruta, 'w') do |archivo|
    archivo.puts arregloDeNumeros
    end
 end
end


