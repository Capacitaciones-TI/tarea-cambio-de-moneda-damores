Algoritmo moneda
	Escribir "Ingrese la moneda fuente: "
	Leer origen
	Escribir "Ingrese la moneda destino: "
	Leer destino
	Escribir "Ingrese la cantidad en ", origen, ": "
	Leer cantidad
	
	// Aqui va el algoritmo
	Dimension tabla[4, 4]
	usd <- 1
	eur <- 2
	gbp <- 3
	aud <- 4
	
	tabla[usd, usd] <- 1
	tabla[usd, eur] <- 0.93
	tabla[usd, gbp] <- 0.79
	tabla[usd, aud] <- 1.50
	
	tabla[eur, usd] <- 1.07
	tabla[eur, eur] <- 1
	tabla[eur, gbp] <- 0.85
	tabla[eur, aud] <- 1.61
	
	tabla[gbp, usd] <- 1.27
	tabla[gbp, eur] <- 1.18
	tabla[gbp, gbp] <- 1
	tabla[gbp, aud] <- 1.90
	
	tabla[aud, usd] <- 0.67
	tabla[aud, eur] <- 0.62
	tabla[aud, gbp] <- 0.53
	tabla[aud, aud] <- 1
	
	
	Segun origen Hacer
		"USD":
			codigo_origen <- 1
		"EUR":
			codigo_origen <- 2
		"GBP":
			codigo_origen <- 3
		"AUD":
			codigo_origen <- 4
		De otro modo:
			codigo_origen <- -1
	FinSegun
	
	Segun destino Hacer
		"USD":
			codigo_destino <- 1
		"EUR":
			codigo_destino <- 2
		"GBP":
			codigo_destino <- 3
		"AUD":
			codigo_destino <- 4
		De otro modo:
			codigo_destino <- -1
	FinSegun
	
	Si codigo_origen es -1 o codigo_destino es -1 Entonces
		Escribir "Moneda incorrecta"
	Sino
		resultado <- tabla[codigo_origen, codigo_destino] * cantidad
		Escribir "La cantidad en ", destino, " es ", resultado
	FinSi
	
FinAlgoritmo

