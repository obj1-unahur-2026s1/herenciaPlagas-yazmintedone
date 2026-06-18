import elementos.*

class Plaga{
    var poblacion
    method poblacion() = poblacion
    method atacar(unElemento){
        unElemento.recibirAtaque(self)
        poblacion=poblacion * 1.1
    }
    
    method transmitirEnfermedad(){
        return poblacion > 10 and self.condicionAdicional()
    }
    method condicionAdicional()
    method nivelDeDaño()
}

class Cucaracha inherits Plaga{
    var pesoPromedio

    override method nivelDeDaño(){return poblacion * 0.5}
    override method condicionAdicional(){
        return pesoPromedio >= 10
    }
    override method atacar(unElemento){
        super(unElemento)
        pesoPromedio=pesoPromedio + 2

    }
}

class Pulga inherits Plaga{
    override method nivelDeDaño(){return poblacion * 2}
    override method condicionAdicional(){return true}
}

class Garrapata inherits Pulga{
    override method atacar(unElemento){
        unElemento.recibirAtaque(self)
        poblacion=poblacion * 1.2
    }
}

class Mosquito inherits Plaga{
    override method nivelDeDaño(){return poblacion}
    override method condicionAdicional(){return poblacion % 3 == 0}
}
