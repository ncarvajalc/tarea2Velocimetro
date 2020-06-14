import UIKit

enum Velocidades : Int{
    case Apagado = 0,
    VelocidadBaja = 20,
    VelocidadMedia = 50,
    VelocidadAlta = 120
    
    init( velocidadInicial : Velocidades ){
        self = velocidadInicial
    }
}

class Auto {
    var velocidad : Velocidades
    
    init() {
        self.velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
    }
    
    func cambioDeVelocidad() -> ( actual : Int, velocidadEnCadena: String){
        var tupla : (Int, String) = (0, "")
        if self.velocidad == Velocidades.Apagado {
            self.velocidad = Velocidades.VelocidadBaja
            tupla = (Velocidades.Apagado.rawValue, "Apagado")
        }
        else if self.velocidad == Velocidades.VelocidadBaja {
            self.velocidad = Velocidades.VelocidadMedia
            tupla = (Velocidades.VelocidadBaja.rawValue, "Velocidad baja")
        }
        else if self.velocidad == Velocidades.VelocidadMedia {
            self.velocidad = Velocidades.VelocidadAlta
            tupla = (Velocidades.VelocidadMedia.rawValue, "Velocidad media")
        }
        else {
            self.velocidad = Velocidades.VelocidadMedia
            tupla = (Velocidades.VelocidadAlta.rawValue, "Velocidad alta")
        }
        return tupla
    }
}

var auto = Auto()

for _ in 0 ..< 20 {
    let resultado = auto.cambioDeVelocidad()
    print("\(resultado.actual), \(resultado.velocidadEnCadena)")
}
