"""
Crear una lista en Python denominada "Dueno2" y recorrerla con un bucle mostrando sus elementos por pantalla con excepción del DNI y el Apellido. Los elementos de la lista son:
                    0   ,    1   ,    2   ,    3    ,     4
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
        if Dueno2[i] == Dueno2[1]:
            print("Nombre:", Dueno2[i])
        elif Dueno2[i] == Dueno2[3]:
            print("Teléfono:", Dueno2[i])
        elif Dueno2[i] == Dueno2[4]:
            print("Dirección:", Dueno2[i])
    


print("")
