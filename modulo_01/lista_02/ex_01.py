

def encontraConsoantes(listaStrings):
    consoantes = [letra for letra in listaStrings if letra.isalpha() and letra.lower() not in 'aeiou' and letra != ' ']
    return ''.join(consoantes)
        

print(encontraConsoantes('Meu nome é João'))
