object pepita {
	var energia = 100
	
	method comer(comida) {
		energia = energia + comida.energiaQueAporta()
	}
	
	method volar(distancia) {
		energia = energia - 10 - distancia
	}
	
	method energia() {
		return energia
	}
}

object alpiste {
	method energiaQueAporta() {
		return 20
	}
}

object manzana {
	var madurez = 1
	const base = 5
	
	method madurez() {
		return madurez
	}
	
	method madurez(_madurez) {
		madurez = _madurez
	}
	
	method madurar() {
		self.madurez(madurez + 1)
	}
	
	method energiaQueAporta() {
		return base * madurez
	}
	
}

object pepon {
	var energia = 30
  	method comer(comida) {
		energia = energia + (comida.energiaQueAporta() / 2)
  	}

  	method energia() {
		return energia
  	}

	method volar(distancia) {
	  energia = 20 - (2*distancia)
	}
}

object roque {
	var cenas = 0
	var ave = pepita

	method aveDeRoque(_ave) {
		cenas = 0
	  	ave = _ave
	}

	method alimentar(alimento) {
		cenas += 1
		ave.comer(alimento)
	}


	method cenas() {
	  return cenas
	}
}