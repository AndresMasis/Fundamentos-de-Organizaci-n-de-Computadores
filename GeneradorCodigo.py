"""
# Generates a list of roman numerals
listaRomanos = []
num = [1, 4, 5, 9, 10, 40, 50, 90,
           100, 400, 500, 900, 1000]
sym = ["I", "IV", "V", "IX", "X", "XL",
       "L", "XC", "C", "CD", "D", "CM", "M"]
for number in range(1,4000):
    i = 12
    roma = ""
    while number:
        div = number // num[i]
        number %= num[i]

        while div:
            roma += sym[i]
            div -= 1
        i -= 1

    listaRomanos.append(roma)



#Creates the code of if, according to wich roman numeral is created, what number must return
i = 1
for roman in listaRomanos:
    print("if entrada == '"+ roman+ "':")
    print(" print(", i, ")")
    print("")
    i += 1
"""

