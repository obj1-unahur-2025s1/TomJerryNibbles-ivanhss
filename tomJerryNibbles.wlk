object tom {
  var energia = 50
  var ultimoRatonComido = jerry
  var distanciaRecorrida = 0
  
  method energia() = energia
  
  method correr(metros) {
    energia -= metros / 2
    distanciaRecorrida += metros
  }
  
  method comer(unRaton) {
    energia = (energia + 12) + unRaton.peso()
    ultimoRatonComido = unRaton
  }
  
  method velocidadMaxima() = 5 + (energia / 10)

  method puedeCazar(unaDistancia){return energia > unaDistancia}
  method cazar(unRaton, unaDistancia){
    self.correr(unaDistancia)
    self.comer(unRaton)
  }
}

object jerry {
  var edad = 2
  
  method edad() = edad
  
  method cumplirAnios() {
    edad += 1
  }
  
  method peso() = edad * 20
}

object nibbles {
  method peso() = 35
}

object jorgito {
  var peso = 30
  
  method peso(unPeso) {
    peso = unPeso
  }
  
  method peso() = peso
}
