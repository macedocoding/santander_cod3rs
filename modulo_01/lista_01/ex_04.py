lista = [1, 2, 3, 4]


def adicionarElemento(listaA):
    if len(listaA) % 2 == 0:
        x = int(len(listaA) / 2)
        listaA.insert(x, 42)
        return listaA
    else:
        x = int((len(listaA) + 1) / 2)
        listaA.insert(x, 42)
        return listaA
    
    
print(adicionarElemento(lista))