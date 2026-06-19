import plagas.*
///////////ELEMENTOS///////////
class Hogar{
    var mugre
    const confort

    method esBueno(){return mugre / 2 <= confort} //si su nivel de mugre es la mitad del confort o menos".
    method recibirAtaque(unaPlaga){
        mugre=mugre + unaPlaga.nivelDeDaño()
    }
}

class Huerta{
    var produccion 

    method esBueno(){return produccion > nivelDeCosecha.valor()}

    method recibirAtaque(unaPlaga){
        produccion=produccion - (unaPlaga.nivelDeDaño() * 0.1
        + if (unaPlaga.transmitirEnfermedad()) 10 else 0)
    }

}
////////////////////////////////
object nivelDeCosecha {
    var property valor=10
}
///////////////////////////////
class Mascota{
    var salud

    method esBueno(){return salud > 250}
    method recibirAtaque(unaPlaga){
        if (unaPlaga.transmitirEnfermedad()){
        salud= salud - unaPlaga.nivelDeDaño().max(0)
        }
        
    }
}
///////BARRIOS///////////
class Barrio{
    const property elementos =[]

    method esCopado(){                                               //Compara si esa cantidad que calculamos recién es mayor a la mitad del tamaño total de la lista
        return  self.cantElementosBuenos() > elementos.size() / 2
    }
    method cantElementosBuenos(){                      //Usa la función de colecciones .count(...). Recorre la lista elemento por elemento (al que llama e) y cuenta cuántos devuelven true al preguntarles e.esBueno().
        return elementos.count({e=>e.esBueno()})
    }
    method probarCodigo(){return 0}
}
