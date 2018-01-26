###########################################################################
####################   EJERCICIO1  ########################################
###########################################################################
h = {:claveuno => 10,:clavedos => 20,:clavetres => 30}
h1 = {claveuno:10,clavedos:20,clavetres:30}



###########################################################################
####################   EJERCICIO2  ########################################
###########################################################################
puts "productos = {'bebida' => 850, 'chocolate' => 1200, 'galletas' => 900, 'leche' => 750}"
productos = {'bebida' => 850, 'chocolate' => 1200, 'galletas' => 900, 'leche' => 750}

# 1. Se tiene el siguiente hash: y se realiza la siguiente consulta para conocer los productos existentes:Corrige el error para mostrar la información solicitada.
productos.each { |producto,valor | puts producto }

# 2. Se quiere agregar un nuevo producto al hash: Corrige la instrucción para agregar el producto.
# producto[2200] = cereal
productos['cereal'] = 2200
puts productos
puts ""

# 3. Se quiere actualizar el precio de la bebida:Corrige la instrucción para actualizar el valor del producto existente.
productos['bebida'] = 2000
puts productos
puts ""

# 4. Convertir el hash en un array y guardarlo en una nueva variable.
nuevo = []
nuevo = productos.to_a
print nuevo
puts ""

# 5. Eliminar el producto 'galletas' del hash./
productos.delete('galletas')
puts productos
puts ""

###########################################################################
####################   EJERCICIO3  ########################################
###########################################################################
 h = {"x": 1, "y":2}
# Agregar el string z con el valor 3.
h['z'] = 3
puts h
puts ""
# Cambiar el valor de x por 5.
h[:x] = 5
puts h
puts ""

# Eliminar la clave y.
h.delete(:y)
puts h
puts ""
# Si el hash tiene una clave llamada z mostrar en pantalla "yeeah".
h.select {|valor| puts "yeeah" if valor == :z }

# Invertir el diccionario de forma que los valores sean las llaves y las llaves los valores
puts h.invert
puts ""
b = h.inject({}) {|m,(e,y)| m[y] = e; m }
puts b
puts ""


###########################################################################
####################   EJERCICIO4  ########################################
###########################################################################

# 1.Se pide generar un hash con la información:
personas = ["Carolina", "Alejandro", "Maria Jesús", "Valentín"]
edades = [32, 28, 41, 19]
salida = personas.zip(edades).to_h
puts ""
print  salida
puts ""

# 2. Crear un método que reciba el hash y devuelva el promedio de las edades del hash pasado como argumento.
def promedio(salida)
  salida.values.sum / salida.values.count
end
puts ""
puts promedio(salida)
puts ""

###########################################################################
####################   EJERCICIO5  ########################################
###########################################################################
meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
ventas = [2000, 3000, 1000, 5000, 4000]

# 1. Generar un hash que contenga los meses como llave y las ventas como valor:
salida = meses.zip(ventas).to_h
puts ""
print salida
puts ""

# En base al hash generado:
# 1. Invertir las llaves y los valores del hash.
puts ""
salida = salida.invert
puts  salida
puts ""
# 2. Obtener el mes mayor cantidad de ventas (a partir del hash invertido.)
salida = salida.invert
puts  salida
salida.each { |k, v| puts k if v == salida.values.max }
puts ""

###########################################################################
####################   EJERCICIO6  ########################################
###########################################################################
# Escribir un hash con el menu de un restaurant, la llave es el nombre del plato y el valor es el precio de este.
 restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }
# 1. Obtener el plato mas caro.
puts ""
puts restaurant_menu .each { |k, v| puts k if v == restaurant_menu .values.max }
puts ""

# 2. Obtener el plato mas barato.
puts ""
puts restaurant_menu.each { |k, v| puts k if v == restaurant_menu .values.min }
puts ""

# 3. Sacar el promedio del valor de los platos.
puts ""
puts restaurant_menu.values.sum / restaurant_menu.values.count
puts ""

# 4. Crear un arreglo con solo los nombres de los platos.
platos = restaurant_menu.keys
puts ""
print platos
puts ""

# 5. Crear un arreglo con solo los valores de los platos.
valores = restaurant_menu.values
puts ""
print valores
puts ""
# 6. Modificar el hash y agregar el IVA a los valores de los platos (multiplicar por 1.19).
restaurant_menu.update(restaurant_menu) { |plato,valor|  valor * 1.19 }
puts ""
print restaurant_menu
puts ""

# 7. Dar descuento del 20% para los platos que tengan un nombre de más 1 una palabra.
restaurant_menu.update(restaurant_menu) { |plato,valor|    plato.split.count > 1 ?  valor = valor - ( valor * 0.2 ) : valor }
puts ""
print restaurant_menu
puts ""



###########################################################################
####################   EJERCICIO7  ########################################
###########################################################################
# Si el usuario ingresa 1, podrá agregar un item y su stock en un solo string y agregarlo al hash. Para separar el nombre del stock el usuario debe utilizar una coma.
# Ejemplo del input: "Pendrives, 100"
# Si el usuario ingresa 2, podrá eliminar un item.
# Si el usuario ingresa 3, puede actualizar la información almacenada (item y stock).
# Si el usuario ingresa 4, podrá ver el stock total (suma del stock de cada item) que hay en el negocio.
# Si el usuario ingresa 5, podrá ver el ítem que tiene la mayor cantidad de stock.
# Si el usuario ingresa 6 podrá ingresar y preguntarle al sistema si un item existe en el inventario o no.
# Por ejemplo, el usuario ingresará "Notebooks" y el programa responderá "Sí".
# El programa debe repertirse hasta que el usuario ingrese 7 (salir).
#
# Actividad Hashes avanzados y enumerables
# Crea una carpeta y guarda cada archivo .rb con el número de la pregunta, siguiendo las instrucciones de manera local con Sublime o Atom.
# Luego guarda los cambios y súbelos a tu repositorio de Github.
# Luego de pushear los últimos cambios, sube el link de Github en el desafío de la sección correspondiente en la plataforma.





# Se pide:
# Crear un menú de 4 opciones, es decir, el usuario puede ingresar 1 2 3 o 4 y según eso el programa realizará distintas funciones.
def  ingreso(hash)
  puts "*************************************************************************************************"
  puts "****************INGRESO DE INVENTARIO EN RUBY****************************************************"
  puts "*************************************************************************************************"
  puts "Ingresar producto Ejemplo del input: Pendrives, 100"
  producto =   gets.chomp
  while   !producto.include? ","
    producto =   gets.chomp
  end
  hash[producto.split(",").first.to_sym] = producto.split(",").last.to_i
  puts "Ingresar Exitoso, presione para continuar"
  hash.each_with_index { |producto,index| puts "#{index+1} =>  #{producto}"}
  gets.chomp
end

def  eliminar(hash)
  puts "*************************************************************************************************"
  puts "****************ELMINAR DE INVENTARIO EN RUBY****************************************************"
  puts "*************************************************************************************************"
  puts "Indice el producto a eliminar (0 = salir ):"
  hash.each_with_index { |producto,index| puts "#{index+1} =>  #{producto}"}
  sw = true
  while sw == true
    seleccion  =   gets.chomp.to_i
    if seleccion != 0
      sw = false
    end
  end
  seleccion = seleccion - 1
  hash.delete(hash.keys[seleccion])
  puts "Eliminacion Exitosa, presione para continuar"
  hash.each_with_index { |producto,index| puts "#{index+1} =>  #{producto}"}
  gets.chomp.to_i
end
def  modificar(hash)
  puts "*************************************************************************************************"
  puts "***************MODIFICAR DE INVENTARIO EN RUBY***************************************************"
  puts "*************************************************************************************************"
  puts "Indice el producto a Modificar:"
  hash.each_with_index { |producto,index| puts "#{index+1} =>  #{producto}"}
  seleccion =   gets.chomp.to_i
  puts "Ingrese el nuevo Precio:"
  precio =   gets.chomp.to_i
  seleccion = seleccion - 1  #manejo de indice
  hash[hash.keys[seleccion]] = precio
  # hash.each_with_index { |producto,index| hash[producto[0]]=precio if index == seleccion}
  puts "Modificacion exitosa presione para continuar"
  hash.each_with_index { |producto,index| puts "#{index+1} =>  #{producto}"}
  gets.chomp.to_i
end
def  ver_stock_total(hash)
  puts "*************************************************************************************************"
  puts "****************STOCK TOTAL  DE INVENTARIO EN RUBY***********************************************"
  puts "*************************************************************************************************"
  puts ""
  puts "Listado de Stock Total:"
  hash.each_with_index { |producto,index|  puts "#{index+1} =>  #{producto}"}
  stock_total = hash.values.sum
  print "\n El Stock Total es: #{stock_total}"
  puts ""
  gets.chomp.to_i

end
def  ver_stock_max(hash)
  puts "*************************************************************************************************"
  puts "****************STOCK MAYOR INVENTARIO EN RUBY****************************************************"
  puts "*************************************************************************************************"

  puts ""
  puts "Listado de Stock con mayor cantidad:"
  hash.each_with_index { |producto,index|  puts "#{index+1} =>  #{producto}"}
  puts ""
  hash.each { |k, v| puts "El material con mayor stock es : #{k}" if v == hash.values.max }
  puts ""
  gets.chomp.to_i
end
def  consultar(hash)
  puts "*************************************************************************************************"
  puts "****************LISTADO DE  INVENTARIO EN RUBY***************************************************"
  puts "*************************************************************************************************"
  puts "Busqueda de Materiales:"
  puts ""
  puts "Ingrese el material a buscar:"
  seleccion =   gets.chomp.upcase()
  valor = hash.select{|key, valor| key if key.to_s.upcase  == seleccion}
  if !valor.empty?
    puts "Maerial si existe: #{valor}"
  else
    puts "Maerial no existe"
 end
  puts ""
  gets.chomp.to_i
end


seleccion = 1
inventario = {"Notebooks": 4, "PC Escritorio": 6, "Routers": 10, "Impresoras": 6}
print inventario.methods



while (seleccion !=7)

  puts "*************************************************************************************************"
  puts "****************SISTEMA DE INVENTARIO EN RUBY****************************************************"
  puts "*************************************************************************************************"
  puts "Ingresar 1  Ingresar Inventario, Ejemplo del input: Pendrives, 100"
  puts "Ingresar 2, Podrá eliminar un item"
  puts "Ingresar 3, Puede actualizar la información almacenada (item y stock)"
  puts "Ingresar 4, Podrá ver el stock total (suma del stock de cada item) que hay en el negocio"
  puts "Ingresar 5, Podrá ver el ítem que tiene la mayor cantidad de stock"
  puts "Ingresar 6, Podrá ingresar y preguntarle al sistema si un item existe en el inventario o no"
  print "Seleccione la opcion a ejecutar (9 = salir):"
  seleccion =   gets.chomp.to_i
  puts ""
  case seleccion
      when 1
         ingreso(inventario)
      when 2
         eliminar(inventario)
      when 3
        modificar(inventario)
      when 4
        ver_stock_total(inventario)
      when 5
        ver_stock_max(inventario)
      when 6
        consultar(inventario)
      when 7
        puts ">>>>>A selccionado Salir<<<"
     else
       puts "Opcion No valida"
       gets.chomp.to_i
  end
end
