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


#Creates the code of if, according to wich roman numeral is created, what number in words must return
i = 0
for roman in listaRomanos:
    print("if entrada == '" + roman + "':")
    print(" print('" + listaNumerosPal[i] + "')")
    print("")
    i += 1