//: Velocimetro
import UIKit

enum Velocidades : Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    init(velocidadInicial : Velocidades){
        self = velocidadInicial
    }
}

class Auto {
    var velocidad : Velocidades
    
    init(){
        velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena : String){
        let inicial : Int = velocidad.rawValue
        switch inicial {
        case 0:
            velocidad = .VelocidadBaja
            return (inicial, "Apagado")
        case 20:
            velocidad = .VelocidadMedia
            return (20, "Velocidad baja")
        case 50:
            velocidad = .VelocidadAlta
            return (50, "Velocidad media")
        case 120:
            velocidad = .VelocidadMedia
            return (120, "Velocidad alta")
        default:
            return(0 , "Valor no válido")
        }
    }
}

var auto = Auto()
for i in 1...20 {
    var tupla = auto.cambioDeVelocidad()
    print("\(i). \(tupla.actual), \(tupla.velocidadEnCadena)")
}
