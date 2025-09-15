object rolando {
    
    var property tamañoMochila = 2
    const mochila = []
    const hogar = castilloDePiedra
    var property posActual = null

    method recolectarItem(unItem) {
        self.validarRecolectarItem()
        mochila.add(unItem)
    }

    method validarRecolectarItem() {
      if(mochila.size() >= tamañoMochila){
        self.error("La mochila no cuenta con suficiente espacio")
      }
    }

    method artefactosEnMochila() {
      return mochila.map( {item => item} )
    }

    method artefactosTotales() {
      return 
    }

    method guardarItemsEnHogar() {
      self.validarGuardarItemsEnHogar()
      hogar.añadirVariosItems(mochila)
      mochila.clear()
    }

    method irHaciaHogar() {
      posActual = castilloDePiedra
      self.guardarItemsEnHogar()
    }

    method estaEnHogar() {
      return posActual == hogar
    }

    method validarGuardarItemsEnHogar() {
      if (not self.estaEnHogar()){
        self.error("Rolando no se encuentra en su hogar")
      }
    }

}

// Items
object espadaDelDestino { 
}

object libroDeHechizos {
}

object collarDivino {
}

object armaduraDeAceroValyrio {
}

//
object castilloDePiedra {

  const castilloDePiedra = [] 

  method artefactos() {
    return castilloDePiedra
  }

  method añadirItem(unItem) {
    castilloDePiedra.add(unItem)
  }

  method añadirVariosItems(listDeItems) {
    castilloDePiedra.addAll(listDeItems)
  }
  
}