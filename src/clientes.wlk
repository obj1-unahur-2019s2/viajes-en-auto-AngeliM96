//Ludmila: 18 pesos el kilómetro, valor fijo e inamovible.

object ludmila
{
	var valorDelKm = 18
	method valorDelKm()
	{
		return valorDelKm
	}
}

//Ana María: 30 pesos el kilómetro si está económicamente estable, 
//25 pesos el kilómetro en caso contrario. Se sabe en cada momento si Ana María está o no económicamente estable.

object anaMaria 
{
	var estable = true
	method noEstaEstable()
	{
		estable = false
	}
	method estaEstable()
	{
		estable = true
	}
	method valorDelKm()
	{
		if (estable)
		{
			return 30
		}
		else
		{
			return 25
		}
	}
}

//Teresa: arranca en 22 pesos el kilómetro, puede cambiar a cualquier otro valor.

object teresa
{
	var valorDelKm = 22
	method valorDelKm(nuevoValor)
	{
		valorDelKm = nuevoValor
	}
	method valorDelKm()
	{
		return valorDelKm
	}
}

