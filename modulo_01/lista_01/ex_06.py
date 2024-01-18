lista = ['Araújo', '', 'Alexandre', 'Silva', 'Flávio', '']


def removerElementosVazios(listaA:list) -> list:
    """Função que recebe uma lista e retorna outra lista sem vazios"""
    
    return([i for i in listaA if i])


print(removerElementosVazios(lista))
