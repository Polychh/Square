
import Foundation
//public уровень доступа, для Tests в playground

public protocol Figure{
    func calculateSquare() -> Double
}

public class Triangle{
    
    private let a: Double
    private let b: Double
    private let c: Double
    
    public init(a: Double, b: Double, c: Double) {
        self.a = a
        self.b = b
        self.c = c
    }
    
    private func isRightAngled(a: Double, b: Double, c: Double) -> Bool {
        return a * a + b * b == c * c
    }
    
    private func isValidTriangle(a: Double, b: Double, c: Double) -> Bool {
           return a + b > c && a + c > b && b + c > a
       }
}

public class Circle{
    
    private let r: Double
    private let pi = Double.pi
    
    public init(r: Double) {
        self.r = r
    }
}

extension Triangle: Figure{
    public func calculateSquare() -> Double {
        if isValidTriangle(a: a, b: b, c: c){
            let s = (a + b + c) / 2
            let square = isRightAngled(a: a, b: b, c: c) ? 0.5 * (a * b) : sqrt(s * (s - a) * (s - b) * (s - c))
            return square
        }else{
            return 0.0
        }
    }
}

extension Circle: Figure{
    public func calculateSquare() -> Double{
        return pow(r, 2) * pi
    }
}

public class SquareCalculator{
    private let fig: Figure
    
    public init(fig: Figure) {
        self.fig = fig
    }
     public func calculateFigureSquare() -> Double{
         fig.calculateSquare()
    }
}




