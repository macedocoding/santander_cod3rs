listaDeNomes = ['Araújo', 'Alexandre', 'Silva', 'Flávio', '']


def removerElementosVazios(listaA):
    for i in listaA:
        if not listaA[i]:
            print(listaA)


print(removerElementosVazios(listaDeNomes))
