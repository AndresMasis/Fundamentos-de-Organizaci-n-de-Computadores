# Hecho por Andrés Masís Rojas
# Carne 2020127158
# Para el proyecto grupal
# En caso de tener una duda, le ruego contactar al estudiante para aclarar
# WhatsApp: 6071-7600
# E-mail: andres-masis-rojas@outlook.com
# Preferiblemente WhatsApp
def pasar_IEEE(num):
    binario, exponente = decimal_a_binario(num)

    # Se elimina la como y el 1 anterior a esta
    mantisa = binario[2:]

    # El sesgo del exponente en este sistema es 524 287
    exponenteSesgado = 524287 + exponente

    # Se debe pasar a binario el exponente
    sesgadoBinario = entero_a_binario(exponenteSesgado)

    # Se debe llenar los 20 bits
    sesgadoBinario = llenar_campos(sesgadoBinario) + sesgadoBinario

    signo = "0"

    ieee = signo + " " + sesgadoBinario + " " + mantisa

    return ieee


def llenar_campos(dato):
    faltantes = 20-len(dato)

    llenador = ""
    while faltantes > 0:
        llenador += "0"

    return llenador


def decimal_a_binario(num):
    entera = num//1
    fraccionariaBinaria = fraccion_a_binario(num-entera)

    comodin = int(entera)
    enteraBinaria = entero_a_binario(comodin)

    # Se corre la coma de una vez para normalizar
    enteraBinaria = enteraBinaria[:1] + '.' + enteraBinaria[1:]
    exponente = 1

    # Se une en un solo dato
    numBinarioNorm = enteraBinaria +  fraccionariaBinaria
    return numBinarioNorm, exponente



def entero_a_binario(num):
    binario = ""

    while(num > 0):
        cociente = num // 2
        residuo = num % 2

        binario += str(residuo)
        num = cociente
    return binario[::-1]

def fraccion_a_binario(frac):
    binario = ""

    # LLega hasta 490, porque son 491 bits de mantisa, pero se fueron 2 bits en la parte entera
    # Pero devuelve un bit porque uno se quita de la mantisa el que se asume
    # 491 - (2-1)
    while len(binario) <= 490:
        resultado = frac * 2

        if resultado > 1:
            binario += "1"
            frac = resultado - 1 # Se elimina el 1, para que quede solo la parte fraccionaria
        else:
            binario += "0"
            frac = resultado

    return binario



print("Caso de pi")
print(pasar_IEEE(3.14159265258979323846))

print("")

print("Caso de e")
print(pasar_IEEE(2.71828182845904523536))