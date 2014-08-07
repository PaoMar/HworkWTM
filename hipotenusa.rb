puts "Seleccione una opcion del Menu:"
puts "1. Calcular Hipotenusa"
puts "2. Calcular Numero Mayor"
puts "3. Calcular Numero Par o Impar y multiplo de 3" 
puts "4. Calcular tipo de angulo" 
puts "5. Calcular tipo de tringulo" 
puts "6. Calcular si un año es bisiesto"
puts "7. Mostrar divisores numero entero" 
puts "8. Calcular si un numero es primo"
puts "9. Calcular si un numero es perfecto" 
puts "10. Mostrar fecha valida"
puts "11. Calcular serie" 
puts "12. Sumar multiplos de 5 o 3 del 1 al 1000"
puts "13. Calcular el factor primo mayor de un numero"
puts "14. Calcular mayor palindromo al multiplicar numeros de 3 digitos"  
opc = gets.chomp.to_i

case opc

when 1
    puts "Ingrese el valor del lado a"
    ladoA = gets.chomp.to_i

    puts "Ingrese el valor del lado b"
    ladoB = gets.chomp.to_i

    hipotenusa = Math.sqrt(ladoA**2 + ladoB**2)

    puts "El valor de la hipotenusa es: #{hipotenusa}"
when 2
  puts "Ingrese primer numero a comparar"
  num1 = gets.chomp.to_i

  puts "Ingrese segundo numero a comparar"
  num2 = gets.chomp.to_i

  puts "Ingrese tercer numero a comparar"
  num3 = gets.chomp.to_i

  if num1 >= num2 && num1 >= num3
    puts "el mayor es #{num1}"
  elsif num2 >=num1 && num2>= num3
    puts "el mayor es #{num2}"
  else 
    puts "el mayor es #{num3}"
  end 

when 3
  puts "Ingrese el numero para verificar si es par o impar"
  num = gets.chomp.to_i
  if num % 2 == 0
    puts "el numero es par"
  elsif num % 3 == 0
    puts "el numero es impar y multiplo de 3"
  else
    puts "el numero es impar y no es multiplo de 3"
  end

when 4
  puts "Ingrese el valor del angulo a evaluar"
  angulo = gets.chomp.to_i

  if angulo < 90
    puts "es un angulo Agudo"
  elsif angulo > 90 
    puts "es un angulo Obtuso"
  else
    puts "es un angulo Recto"
  end

when 5
  puts "Ingrese el primer lado del triangulo"
  lado1 = gets.chomp.to_i
  puts "Ingrese el segundo lado del triangulo"
  lado2 = gets.chomp.to_i
  puts "Ingrese el tercer lado del triangulo"
  lado3 = gets.chomp.to_i

  if lado1 == lado2 &&  lado2== lado3
    puts "es un trinagulo Equilatero"
  elsif lado1 == lado2 || lado2 == lado3 || lado3 == lado1
    puts "es un triangulo Isóceles"
  else
    puts "es un trinagulo Escaleno"
  end
when 6
  puts "Ingrese el año a evaluar"
  anio = gets.chomp.to_i
  if anio % 4 == 0 && (anio % 100 != 0 || anio % 400 == 0)
    puts "El año es bisiesto"
  else
    puts "El año no es bisiesto"
  end

when 7
  puts "Ingrese el numero para calcular sus divisores"
  num = gets.chomp.to_i

  cont = 1
  while cont <= num
    if num % cont == 0
      puts "#{cont}"
    end
    cont+=1
  end

when 8
  puts "Ingrese un numero a validar"
  num1 = gets.chomp.to_i
  i=2
  p = false
  while i < (num1/2)  do
     if (num1 % i == 0)
      p = true
    end 
     i+=1
  end
  if p == true
    puts "#{num1} no es primo"
  else
    puts "#{num1} es primo"
  end

when 9
  puts "Ingrese el número a validar"
  perfecto = gets.chomp.to_i
  resultado = 0
  cont = 1
  while cont <= (perfecto-1)
    if perfecto % cont == 0
      resultado = resultado + cont
    end
    cont+=1
  end
  if resultado == perfecto
    puts "El número es perfecto"
  else
    puts "El número no es perfecto" 
  end

when 10
  puts "Ingrese el dia"
  dia = gets.chomp.to_i
  puts "Ingrese el mes"
  mes = gets.chomp.to_i
  puts "Ingrese el año"
  anio = gets.chomp.to_i

  case mes
  when 1
    if dia>=1 && dia<=31
      puts "#{dia} de Enero de #{anio}"
    else
      puts "Error: ingreso un dia invalido para el mes de Enero"
    end
  when 2
    if dia>=1 && dia<=29
      puts "#{dia} de Febrero de #{anio}"
    else
      puts "Error: ingreso un dia invalido para el mes de Febrero"
    end
  when 3
    if dia>=1 && dia<=31
      puts "#{dia} de Marzo de #{anio}"
    else
      puts "Error: ingreso un dia invalido para el mes de Marzo"
    end
  when 4
    if dia>=1 && dia<=30
      puts "#{dia} de Abril de #{anio}"
    else
      puts "Error: ingreso un dia invalido para el mes de Abril"
    end
  when 5
    if dia>=1 && dia<=31
      puts "#{dia} de Mayo de #{anio}"
    else
      puts "Error: ingreso un dia invalido para el mes de Mayo"
    end
  when 6
    if dia>=1 && dia<=30
      puts "#{dia} de Junio de #{anio}"
    else
      puts "Error: ingreso un dia invalido para el mes de Junio"
    end
  when 7
    if dia>=1 && dia<=31
      puts "#{dia} de Julio de #{anio}"
    else
      puts "Error: ingreso un dia invalido para el mes de Julio"
    end
  when 8
    if dia>=1 && dia<=31
      puts "#{dia} de Agosto de #{anio}"
    else
      puts "Error: ingreso un dia invalido para el mes de Agosto"
    end
  when 9
    if dia>=1 && dia<=30
      puts "#{dia} de Septiembre de #{anio}"
    else
      puts "Error: ingreso un dia invalido para el mes de Septiembre"
    end
  when 10
    if dia>=1 && dia<=31
      puts "#{dia} de Octubre de #{anio}"
    else
      puts "Error: ingreso un dia invalido para el mes de Octubre"
    end
  when 11
    if dia>=1 && dia<=30
      puts "#{dia} de Noviembre de #{anio}"
    else
      puts "Error: ingreso un dia invalido para el mes de Noviembre"
    end
  when 12
    if dia>=1 && dia<=31
      puts "#{dia} de Diciembre de #{anio}"
    else
      puts "Error: ingreso un dia invalido para el mes de Diciembre"
    end
  else
    puts "Error: Ingresó un mes invalido"
  end

when 11
  puts "Ingrese el numero de la serie"
  num = gets.chomp.to_i
  if num != 0
    cont = 1
    resultado=0
    while cont <= num
      resultado = resultado + 1.0/cont
      cont+=1
    end
    puts "el resultado de la serie es: #{resultado}"
  else
    puts "Error: Para calcular la serie es necesario que el numero sea mayor que 0"
  end

when 12
  puts "A continuación se listaran los multiplos de 5 y 3 del 1 al 1000"
  cont = 1
  resultado = 0
  while cont < 1000
    if cont % 5 == 0 || cont % 3 == 0
      resultado =  resultado + cont
    end
    cont+=1
  end 
  puts "El resultado de la suma de multiplos es: #{resultado}"

when 13
  puts "Ingrese numero para calcular factores primos"
  num = gets.chomp.to_i
  resultado = 1
  cont = 2
  while cont <= num
    if num % cont == 0
      num = num / cont
    end
    if resultado <= cont
      resultado = cont
    end
    cont +=1
  end
  puts "El factor primo mayor es : #{resultado}"

when 14
  resultado = 1
  cont1 = 100
  while cont1 <= 999
    cont2 = 100
    while cont2 <=999
      if ((cont1 * cont2).to_s).reverse == (cont1 * cont2).to_s
          if resultado <= cont1 * cont2
            resultado = cont1*cont2
          end
      end
      cont2+=1
    end 
    cont1+=1
  end
  puts "Este es el mayor palindromo calculado: #{resultado}"

when 15
  def numeroPrimo(num1)
      i=2
      p = false
      while i < (num1/2)  do
         if (num1 % i == 0)
          p = true
        end 
         i+=1
      end
      if p == true
        return false
      else
        return true
      end
  end
  i=3
  cont = 1
  while cont <= 10001
    primo= numeroPrimo(i)
    if primo
    cont=cont+1 
    end
    i+=2
  end
  i = i-2
  puts "El numero primo 10001 es :#{i}"
 
else
  puts "No selecciono una opción valida"

end




    











