import clientes.*

//Roxana le cobra a cada cliente el precio por kilómetro que pactó con la cooperativa sin variaciones.

object roxana
{
	method precioViaje(cliente,kms)
	{
		return cliente.valorDelKm() * kms
	}
}

//Gabriela le aumenta un 20%, porque su auto de alta gama.

object gabriela
{
	method precioViaje(cliente,kms)
	{
		return cliente.valorDelKm() * kms * 1.2
	}
}

//Mariela no aplica recargo, pero establece un mínimo de 50 pesos el viaje.

object mariela
{
	method precioViaje(cliente,kms)
	{
		if ((cliente.valorDelKm() * kms) < 50)
		{
			return 50
		}
		else
		{
			return cliente.valorDelKm() * kms
		}
	}
}

//Juana por su parte, cobra 100 pesos hasta 8 kilómetros, y 200 pesos si son más de 8 kilómetros. 
//A Juana no le importa lo que pactó la agencia, le cobra lo mismo a todos.

object juana
{
	method precioViaje(cliente,kms)
	{
		if (kms <= 8)
		{
			return 100
		}
		else
		{
			return 200
		}
	}
}

//Lucía es una remisera que hace reemplazos, o sea, cubre los turnos que las otras remiseras se tienen que tomar por alguna razón. 
//Hay que informar a quién está reeemplazando Lucía. Lucía cobra lo mismo que la remisera al que está reemplazando.

object lucia
{
	var reemplazando
	method reemplaza(remisera)
	{
		reemplazando = remisera
	}
	method reemplazandoA()
	{
		return reemplazando
	}
	method precioViaje(cliente,kms)
	{
		return reemplazando.precioViaje(cliente,kms)
	}
	
}

//Melina es una cadeta que trabaja para los otros clientes de la remisería. En cada momento trabaja para un cliente, se debe informar para quién. 
//El precio por kilómetro pactado con Melina es 3 pesos menos que el precio del cliente para el que esté trabajando en cada momento.

object melina
{
	var trabajaPara
	method trabajaPara(cliente)
	{
		trabajaPara = cliente
	}
	method precioViaje(cliente,kms)
	{
		if (cliente == trabajaPara)
		{
			return (cliente.valorDelKm()-3) * kms
		}
		else
		{
			return cliente.valorDelKm() * kms
		}
	}
}