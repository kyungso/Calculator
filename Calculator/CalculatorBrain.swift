//
//  CalculatorBrain.swift
//  Calculator
//
//  Created by Cocoa on 2018. 8. 8..
//  Copyright © 2018년 ksjung. All rights reserved.
//

import Foundation

class CalculatorBrain
{
    private var accumulator = 0.0
    
    func setOperand(operand: Double) {
        accumulator = operand
    }
    
    var operations: Dictionary<String,Operation> = [
        "π" : Operation.Constant(Double.pi), //Double.pi,
        "e" : Operation.Constant(M_E), //M_E,
        "√" : Operation.UnaryOperation(sqrt), //sqrt,
        "cos" : Operation.UnaryOperation(cos) //cos
    ]
    
    enum Operation {
        case Constant(Double)
        case UnaryOperation((Double) -> Double)
        case BinaryOperation
        case Equals
    }
    
    func performOperation(symbol: String) {
        if let operation = operations[symbol] {
            switch operation {
            case .Constant(let value): accumulator = value
            case .UnaryOperation: break
            case .BinaryOperation: break
            case .Equals: break
            }
        }
    }
    
    var result: Double {
        get {
            return accumulator
        }
    }
}
