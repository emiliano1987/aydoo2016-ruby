require 'rspec'

require_relative '../model/lectura_de_parametros.rb'
class LecturaDeParametrosSpec
  describe 'LecturaDeParametros' do

    it 'Lectura de Parametro al recibir un numero a descomponer' do
      lector = LecturaDeParametros.new
      parametros = [10]
      lector.lectorDeParametros(parametros)
      expect(lector.numero).to eql(10)
    end

    it 'Lectura de Parametro al recibir un numero a descomponer con formato pretty por default' do
      lector = LecturaDeParametros.new
      parametros = [10]
      lector.lectorDeParametros(parametros)
      expect(lector.formato).to eql("--format=pretty")
    end

    it 'Lectura de Parametro al recibir un numero a descomponer con ordenamiento ascendente por default' do
      lector = LecturaDeParametros.new
      parametros = [10]
      lector.lectorDeParametros(parametros)
      expect(lector.orden).to eql("--sort=asc")
    end

    it 'Lectura de Parametro al recibir un formato asignado como pretty' do
      lector = LecturaDeParametros.new
      parametros = [20,"--format=pretty"]
      lector.lectorDeParametros(parametros)
      expect(lector.formato).to eql("--format=pretty")
    end

    it 'Lectura de Parametro al ingresar un parametro de formato con mayuscula' do
      lector = LecturaDeParametros.new
      parametros = [20,"--Format=pretty"]
      lector.lectorDeParametros(parametros)
      expect(lector.formato).to eql("--format=pretty")
    end

    it 'Lectura de Parametro al recibir un formato asignado como quiet' do
      lector = LecturaDeParametros.new
      parametros = [30,"--format=quiet"]
      lector.lectorDeParametros(parametros)
      expect(lector.formato).to eql("--format=quiet")
    end

    it 'Lectura de Parametro al recibir un parametro de ordenamiento en mayuscula' do
      lector = LecturaDeParametros.new
      parametros = [30,"--SORT=aSc"]
      lector.lectorDeParametros(parametros)
      expect(lector.orden).to eql("--sort=asc")
    end

    it 'Lectura de Parametro al recibir un orden ascendente en la descomposicion del factor primo' do
      lector = LecturaDeParametros.new
      parametros = [40,"--sort=asc"]
      lector.lectorDeParametros(parametros)
      expect(lector.orden).to eql("--sort=asc")
    end

    it 'Lectura de Parametro al recibir un orden descendente en la descomposicion del factor primo' do
      lector = LecturaDeParametros.new
      parametros = [50,"--sort=des"]
      lector.lectorDeParametros(parametros)
      expect(lector.orden).to eql("--sort=des")
    end

    it 'Lectura de Parametro al recibir un orden descendente en la descomposicion del factor primo' do
      lector = LecturaDeParametros.new
      parametros = [50,"--output-file=salida.txt"]
      lector.lectorDeParametros(parametros)
      expect(lector.archivoRuta).to eql("salida.txt")
    end

    it 'Se ejecuta una excepcion al ingresar una cantidad de parametros mayor a la permitida' do
      lector = LecturaDeParametros.new
      parametros = [50,"--output-file=salida.txt","--format=pretty","--sort=des","prueba"]
      expect{lector.lectorDeParametros(parametros)}.to raise_error(ArgumentError)
    end

    it 'Se ejecuta una excepcion ejecutar programa sin parametros' do
      lector = LecturaDeParametros.new
      parametros = []
      expect{lector.lectorDeParametros(parametros)}.to raise_error(ArgumentError)
    end

    it 'Se ejecuta una excepcion al ingresar erroneamente un parametro' do
      lector = LecturaDeParametros.new
      parametros = [40,"--output-file=salida.txt","format=pretty","--sort=des","prueba"]
      expect{lector.lectorDeParametros(parametros)}.to raise_error(ArgumentError)
    end

  end
end
