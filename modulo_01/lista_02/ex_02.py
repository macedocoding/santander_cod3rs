
from statistics import mean


precos_celulares = {'valor': [987.08, 852.95, 2240.00, 999.99, 5308.32]}

def mediaPrecoCelular(dictCelulares):
	valores_calculados = []
	
	media = mean(dictCelulares['valor'])
	mais_caro = max(dictCelulares['valor'])
	mais_barato = min(dictCelulares['valor'])

	valores_calculados.append(media)
	valores_calculados.append(mais_barato)
	valores_calculados.append(mais_caro)
	

	return valores_calculados


print(mediaPrecoCelular(precos_celulares))
