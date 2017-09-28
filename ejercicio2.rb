=begin
1. Agregar un método de instancia llamado lados en ambas clases. El método debe
imprimir un string con las medidas de los lados.
2. Crear un módulo llamado Formula.
3. Dentro del módulo Formula crear un método llamado perimetro que reciba dos
argumentos (lados) y devuelva el perímetro.
4. Dentro del módulo Formula crear un método llamado area que reciba dos
argumentos (lados) y devuelva el área.
5. Implementar -mediante Mixin- el módulo en las clases Rectangulo y Cuadrado.
6. Instanciar un Rectangulo y un Cuadrado.
7. Imprimir el área y perímetro de los objetos instanciados utilizando el método del
módulo implementado.	
=end
module Formula
	def perimetro
		if self.is_a? Cuadrado
			@lado*4
		elsif self.is_a? Rectangulo
			puts self
			2*(@largo+@ancho)
		end
		
	end
	def area
		if self.is_a? Cuadrado
			self.lado*self.lado
		elsif self.is_a? Rectangulo
			puts self
			self.largo+self.ancho
		end
		
	end
end


class Rectangulo
	attr_reader :largo, :ancho
	include Formula
 def initialize(largo, ancho)
 @largo = largo
 @ancho = ancho
 end
 def lados
 puts "las medidas de los lados son:#{@largo} y #{@ancho}"
end
end


class Cuadrado
	attr_reader :lado
 include Formula
 def initialize(lado)
 @lado = lado
 end
 def lados
 puts "las medidas de los lados son: #{@lado}"
end
end


c1 = Cuadrado.new(2)
puts c1.area
#puts c1.perimetro