object rolando {
    
    var property tamañoMochila = 2
    const mochila = #{}

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

}

object espadaDelDestino { 
}

object libroDeHechizos {
}

object collarDivino {
}

object armaduraDeAceroValyrio {
}