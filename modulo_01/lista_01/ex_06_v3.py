def calculaPotencia(listaA):
	listaB = []
	for i in range(len(listaA)):
		listaB.append(listaA[i] ** i)
	return listaB

print(calculaPotencia([1,2,3]))