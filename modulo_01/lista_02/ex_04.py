lista = [["Alexandre", "Ratis", "Rodrigo", "Patricia", "Rejane"], [5.0, 7.0, "8.0", 6.5, "9.0"]]


def mediaAlunosParaDicionario(listaAlunos):
    nomes_notas = list(zip(listaAlunos[0], listaAlunos[1]))
    for i in range(0, len(nomes_notas) - 1):
        return nomes_notas[i]

print(mediaAlunosParaDicionario(lista))
