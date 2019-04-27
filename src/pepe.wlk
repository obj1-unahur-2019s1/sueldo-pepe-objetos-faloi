object pepe {
	var property categoria = gerente
	var property bonoResultado = bonoMontoFijo
	var property bonoPresentismo = bonoAjuste
	var property cantidadDeFaltas = 0

	method sueldo() {
		return categoria.sueldoNeto() 
			+ bonoResultado.monto(self) 
			+ bonoPresentismo.monto(self)
	}	 
}

object gerente {
	method sueldoNeto() { return 15000 }	
}

object cadete {
	method sueldoNeto() { return 20000 }
}

object bonoPorcentaje {
	method monto(empleado) {
		return empleado.categoria().sueldoNeto() * 10 / 100
	}
}

object bonoMontoFijo {
	method monto(empleado) {
		return 800
	}	
}

object bonoNulo {
	method monto(empleado) {
		return 0
	}	
}

object bonoNormal {
	method monto(empleado) {
		if (empleado.cantidadDeFaltas() == 0) {
			return 2000
		} else if (empleado.cantidadDeFaltas() == 1) {
			return 1000
		} else {
			return 0
		}
	}
}

object bonoAjuste {
	method monto(empleado) {
		if (empleado.cantidadDeFaltas() == 0) {
			return 100
		} else {
			return 0
		}
	}
}

object bonoDemagogico {
	method monto(empleado) {
		if (empleado.categoria().sueldoNeto() < 18000) {
			return 500
		} else {
			return 300
		}
	}	
}