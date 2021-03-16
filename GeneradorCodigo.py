# Prints one letter UPPER part in Braile
def imprimirArriba(cadena):
    forma1 = 'aehloruvz' # Forma *.
    forma2 = 'cdmnpy' # Forma **
    forma3 = 'ist' #Forma .*

    resultado = ""
    for letra in cadena:
        if letra == ' ':
            resultado += "  "
        if letra in forma1:
            resultado += "*. "
        if letra in forma2:
            resultado += "** "
        if letra in forma3:
            resultado += ".* "

    return resultado


# Prints one letter MIDDLE part in Braile
def imprimirMitad(cadena):
    forma1 = 'ilsv' # Forma *.
    forma2 = 'hqrt' # Forma **
    forma3 = 'denoyz' # Forma .*
    forma4 = 'acmu' # Forma ..

    resultado = ""
    for letra in cadena:
        if letra == ' ':
            resultado += "  "
        if letra in forma1:
            resultado += "*. "
        if letra in forma2:
            resultado += "** "
        if letra in forma3:
            resultado += ".* "
        if letra in forma4:
            resultado += ".. "

    return resultado


# Prints one letter LOWER part in Braile
def imprimirAbajo(cadena):
    forma1 = 'lmnoqrst' # Forma *.
    forma2 = 'uvyz' # Forma **
    forma3 = 'acdehi' # Forma ..


    resultado = ""
    for letra in cadena:
        if letra == ' ':
            resultado += "  "
        if letra in forma1:
            resultado += "*. "
        if letra in forma2:
            resultado += "** "
        if letra in forma3:
            resultado += ".. "


    return resultado




# Uploads the list of roman numbers
file = open('romanos.txt', 'r')
listaRomanosFea = file.readlines()
file.close()

listaRomanos = []

for e in listaRomanosFea:
    listaRomanos.append(e.strip())


# Uploads the list of numbers in words
file = open('palabras_numeros.txt', 'r')
listaRomanosFea = file.readlines()
file.close()

listaNumerosPal = []

for e in listaRomanosFea:
    listaNumerosPal.append(e.strip())

print(listaRomanos)
print(listaNumerosPal)


#Creates the code of if, according to wich roman numeral is created, what number in words must return

i = 0
for roman in listaRomanos:
    print("if entrada == '" + roman + "':")
    print(" print('" + imprimirArriba(listaNumerosPal[i]) + "')")
    print(" print('" + imprimirMitad(listaNumerosPal[i]) + "')")
    print(" print('" + imprimirAbajo(listaNumerosPal[i]) + "')")
    print("")
    i += 1
