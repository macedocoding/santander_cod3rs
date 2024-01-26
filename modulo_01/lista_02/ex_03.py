

def filtraElementos(listaA):
    elementos_filtrados = lambda listaA: list(filter(lambda x: x > 10, listaA))
    return elementos_filtrados(listaA)


print(filtraElementos([2, 4, 6, 8, 10, 12, 14]))
