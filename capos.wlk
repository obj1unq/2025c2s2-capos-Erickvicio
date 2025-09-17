object rolando {
    
    var property tamañoMochila = 2
    const mochila = #{}
    const artefactosEncontrados = []
    const hogar = castilloDePiedra
    var property posActual = null

    method historialDeArtefactosEncontrados() {
      return artefactosEncontrados
    }

    method encontrarArtefacto(unArtefacto) {
      artefactosEncontrados.add(unArtefacto)

      if(self.tieneEspacioEnMochila()){
        self.recolectarItem(unArtefacto)
      }
    }

    method recolectarItem(unItem) {
        self.validarRecolectarItem()
        mochila.add(unItem)
    }

    method validarRecolectarItem() {
      if(not self.tieneEspacioEnMochila()){
        self.error("La mochila no cuenta con suficiente espacio")
      }
    }

    method tieneEspacioEnMochila() {
      return mochila.size() < tamañoMochila
    }

    method artefactosEnMochila() {
      return mochila
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

    method artefactosTotales() {
      return self.posesiones()
    }

    method poseeElArtefacto(unItem) {
       return self.posesiones().contains(unItem)
      // return posesiones.contains(unItem)
    }

    method posesiones() {
      return mochila.union(hogar.artefactos())
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

  const galeriaDeItems = #{} 

  method artefactos() {
    return galeriaDeItems
  }

  method añadirItem(unItem) {
    galeriaDeItems.add(unItem)
  }

  method añadirVariosItems(listDeItems) {
    galeriaDeItems.addAll(listDeItems)
  }
  
}