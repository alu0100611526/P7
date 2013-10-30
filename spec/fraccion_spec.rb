require "../lib/fraccion.rb"

describe Fraccion do
	before :each do	
		@p1 = Fraccion.new(4,8)
		@p2 = Fraccion.new(6,4)
		@p3 = Fraccion.new(1,2)
	end	
	
	
	
 #Comprobamos que la fraccion se encuentra simplicada en su mínima expresion
	describe "#Asegurandose de que se encuentren en su version reducida" do
		it "Se verifica el valor del numerador " do
			@p1.numerador.should eq(1)
			@p2.numerador.should eq(3) 
		end
		it "Se verfica el valor del denominador" do
			@p1.denominador.should eq(2)  
			@p2.denominador.should eq(2)
		end
	end


#Obtenemos los valores del numerador y denomidador con las funciones respectivas 	
	describe "#para obtener el valor de numerador y denominador se sebe hacer con la funcion num() y denom()" do
		it "Se invoca la funcion num() " do
			@p1.num().should eq(1)
			@p2.num().should eq(3) 
		end
		it "Se invoca la funcion denom()" do
			@p1.denom().should eq(2)  
			@p2.denom().should eq(2)
		end
	end

#Se debe mostrar por la consola la fraccion de la forma: a/b, donde a es el numerador y b el denominador
	
	describe "#Se debe mostar por la consola la fraccion de la forma: a/b, donde a es el numerador y b el denominador" do
		it "mostramos por consola la fraccion" do
			@p1.to_s().should eq("1/2")
			@p2.to_s().should eq("3/2") 
		end
	end
	
#Se debe mostrar por la consola la fraccion en flotante. 
	
	describe "# Se muestra por consola la fraccion de manera decimal a/b " do
		it "Se muestra el valor decimal de la fraccion" do
			@p1.flotante().should eq(0.5)
			@p2.flotante().should eq(1.5) 
		end
	end

#se sobrecarga el operador == para saber si dos fracciones son iguales. 
	describe "#Comparacion de fracciones" do
		it "Se verifica si dos fracciones tienen el mismo valor en el numerador y en  el denominador " do
			(@p1==@p2).should eq(false) 

		end

	end

#se calcula el valor absoluto de las fracciones  
	describe "#se convierte cada fraccion a su valor absoluto (numerador y denomidador positivos)" do
		it "Se verifica el valor absoluto" do
			@p1.numerador.abs.should eq(1) 
			@p1.denominador.abs.should eq(2)
		end

	end

#se calcula el reciproco de las fracciones  
	describe "#Se invierte el numerador con el denominador con la funcion reciprocal" do
		it "Se verifica el reciproco" do
			@p1.reciprocal()
			@p1.to_s.should eq("2/1") 
		end

	end			

#se calcula el opuesto de una fraccion 
	describe "# opuesto de una fraccion" do
		it "se multiplica el numerador por el signo menos" do
			@p1.opuesto
			@p1.to_s.should eq("-1/2")
		end
	end
	
#Se calcula el mcm
	describe "#Calculo del minimo comun multilplo " do
		it "Se calcula el minimo comun multiplo de las fraciones a/b y b/c de la forma mcm =a*b / gcd " do
			@p1.mcm(@p1.denominador,@p2.denominador).should eq(2)
		end
	end

#Se suman dos fracciones


	describe "#suma de dos fracciones " do
		it "Se calcula el minimo comun multiplo de las fraciones (mcm) y luego (a.num * mcm / a.denominador) + (b.num * mcm / b.denominador) /  mcm " do
			(@p1 + @p2).to_s.should eq("2/1")
		end
	end
	
#Se restan dos fracciones
	describe "#resta de dos fracciones " do
		it "Se calcula el minimo comun multiplo de las fraciones (mcm) y luego (a.num * mcm / a.denominador) - (b.num * mcm b.denominador) /  mcm " do
			(@p1 - @p2).to_s.should eq("-1/1")
		end
	end
	

#Producto de dos fracciones	
	describe "#multiplicacion de dos fracciones " do
		it "Calculamos el producto de las fracciones multiplicando sus numeradores y denomidadores  " do
			p3 = @p1 * @p2
			p3.to_s.should eq("3/4")
		end
	end
	

#Division de fracciones
	describe "#division de dos fracciones " do
		it "Calculamos la division de las fracciones multiplicando sus numeradores y denomidadores en cruz  " do
			p3 = @p1 / @p2
			p3.to_s.should eq("1/3")
		end
	end				
#Modulo de una fraccion division entre a y b 
	describe "#modulo de una fraccion " do
		it "Calculamos el resto de la fraccion dividiendo numerador y denominador " do
			(@p1 % @p2).should eq(1)
		end
	end


#Operadores de comparacion	
	describe "#fraccion mayor que otra" do
		it "comparamos las fracciones a ver cual es mayor en caso que la primera sea mayor devuelve true" do
			(@p1 > @p2).should eq(false)
		end
	end
	
	describe "#fraccion menor que otra" do
		it "comparamos las fracciones a ver cual es menor en caso que la primera sea menor devuelve true" do
			(@p1 < @p2).should eq(true)
		end
	end

	describe "#fraccion mayor igual que otra" do
		it "comparamos las fracciones a ver cual es mayorn o igual en caso que la primera sea mayo33r o igual devuelve true" do
			(@p1 >= @p2).should eq(false)
		end
	end
	
	describe "#fraccion menor igual que otra" do
		it "comparamos las fracciones a ver cual es menor o igual en caso que la primera sea menor o igual devuelve true" do
			(@p1 <= @p2).should eq(true)
		end
	end

#Modificacion
	describe "#Funciones conjuntas" do
		it "Usamos una funcion" do
			if ((@p1 % @p3) == 0)
				(((@p1.opuesto)*@p3).abs).to_s.should eq("1/4")
			else
				0.should eq(0)
			end
		end
	end
	
end
















