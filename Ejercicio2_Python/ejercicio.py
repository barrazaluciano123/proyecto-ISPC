"""
Crear una lista en Python denominada "Dueno2" y recorrerla con un bucle mostrando sus elementos por pantalla con excepción del DNI y el Apellido. Los elementos de la lista son:

                23546987, "Maria", "Perez", 4789689, "Pueyrredon 811"

Que representan los datos del dueño de un perro:
                (DNI    , NOMBRE,  APELLIDO, TELÉFONO, DIRECCIÓN)
"""
print("")
# Lista Dueno2
Dueno2 = [23546987, "Maria", "Perez", 4789689, "Pueyrredon 811"]
print("Lista Dueno2: ", Dueno2)
print("")

# Recorriendo lista
for i in range(len(Dueno2)):
    
    # Filtrando DNI y Apellido
    if Dueno2[i] == Dueno2[0] or Dueno2[i] == Dueno2[2]:
        continue
    else:
        print(Dueno2[i])


print("")
