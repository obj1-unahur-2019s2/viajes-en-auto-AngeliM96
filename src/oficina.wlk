import remiseras.*
import clientes.*

object oficina 
{
	var primeraOpcion
	var segundaOpcion
	
	//asignarRemiseras(remisera1, remisera2): establece las remiseras de primera y de segunda opción.
	method asignarRemiseras(remisera1, remisera2)
	{
		primeraOpcion = remisera1
		segundaOpcion = remisera2
	}	
	
	//cambiarPrimerRemiserarPor(remisera): cambia la remisera de primera opción por el que se indica.
	method cambiarPrimerRemiserarPor(remisera)
	{
		primeraOpcion = remisera
	}
	
	//cambiarSegundoRemiseraPor(remisera): cambia la remisera de segunda opción por el que se indica.
	method cambiarSegundoRemiseraPor(remisera)
	{
		segundaOpcion = remisera
	}
	
	//intercambiarRemiseras(): intercambia las remiseras de primera y segunda opción. O sea, la que era primera pasa a segunda, y viceversa.
	method intercambiarRemiseras()
	{
		var auxiliar = primeraOpcion
		primeraOpcion = segundaOpcion
		segundaOpcion = auxiliar
	}
	
	//remiseraElegidaParaViaje(cliente, kms): devuelve la remisera que corresponde asignar a un viaje, dados el cliente y la cantidad de kilómetros. 
	//El criterio es el siguiente: si para ese viaje, el precio de la segunda remisera es menor al de l primera con una diferencia de más de 30 pesos, 
	//entonces se elige la segunda remisera; si no, se elige el primero.
	method remiseraElegidaParaViaje(cliente, kms)
	{
		if ((segundaOpcion.precioViaje(cliente,kms) - primeraOpcion.precioViaje(cliente,kms)) <= 30 )
		{
			return segundaOpcion
		}
		else
		{
			return primeraOpcion
		}
	}
	
}
