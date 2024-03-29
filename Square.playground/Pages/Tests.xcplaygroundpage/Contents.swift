import Foundation
import PlaygroundSupport
import XCTest

class FigureTests: XCTestCase {
    func testTriangleCalculateSquare() {
        let triangle = Triangle(a: 3, b: 4, c: 5)
        XCTAssertEqual(triangle.calculateSquare(), 6, accuracy: 0.001)

        let triangleNonRight = Triangle(a: 4, b: 6, c: 7)
        XCTAssertEqual(triangleNonRight.calculateSquare(), 12, accuracy: 0.1)
                
        let invalidTriangle = Triangle(a: 1, b: 2, c: 3)
        XCTAssertEqual(invalidTriangle.calculateSquare(), 0.0, accuracy: 0.001)
    }
    
    func testCircleCalculateSquare() {
        let circle = Circle(r: 5)
        XCTAssertEqual(circle.calculateSquare(), 78.53981633974483, accuracy: 0.1)
    }
    
    func testCalculateFigureSquare() {
        let squareCalculator = SquareCalculator(fig: Triangle(a: 3, b: 4, c: 5))
        XCTAssertEqual(squareCalculator.calculateFigureSquare(), 6, accuracy: 0.001)
        let squareCalculator1 = SquareCalculator(fig: Circle(r: 5) )
        XCTAssertEqual(squareCalculator1.calculateFigureSquare(), 78.53981633974483, accuracy: 0.1)
    }
}

TestRunner().runTests(testClass: FigureTests.self)



