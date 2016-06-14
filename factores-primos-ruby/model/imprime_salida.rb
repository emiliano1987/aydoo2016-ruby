class ImprimeSalida

  attr_accessor :numerosPrimos
  #Se ingresan tres parametros que indican el formato, el numero a descomponer y el resultado
  def generarSalidaPorPantalla(string,factorADescomponer,factorPrimo)
    if(string=="--format=quiet")
      puts "Factores primos #{factorADescomponer}:"
      puts factorPrimo
    else
      puts "Factores primos #{factorADescomponer}: #{factorPrimo}."
    end
  end

  #Se ingresan tres parametros que indican la ruta donde se ubica el archivo, el formato solicitado y el resultado
  def generarSalidaPorArchivo(ruta,string,factorPrimo)
    File.open(ruta,'w') do |archivo|
      if(string=="--format=quiet")
      archivo.puts factorPrimo
      else
      archivo.print factorPrimo
      end
    end
  end
end