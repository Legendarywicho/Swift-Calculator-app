//
//  CalculatorBrain.swift
//  Calculator
//
//  Created by Luis Santiago  on 11/11/17.
//  Copyright © 2017 Luis Santiago. All rights reserved.
//

import Foundation

func changeSign(_ number: Double)->Double{
    return -number;
}

func multiply (op1:Double,op2:Double)->Double{
    return op1*op2;
}

struct CalculatorBrain{
    
    private var accumulator : Double?
    
    private enum Operation {
        case constant(Double)
        case unaryOperation((Double)->Double)
        case binaryOperation((Double,Double)->Double);
        case equals
    }
    
    private let operations : Dictionary<String, Operation> = [
        "π": Operation.constant(.pi),
        "e": Operation.constant(M_E),
        "√": Operation.unaryOperation(sqrt),
        "cos":Operation.unaryOperation(cos),
        "±" : Operation.unaryOperation({-$0}),
        "×" : Operation.binaryOperation({$0 * $1}),
        "÷" : Operation.binaryOperation({$0 / $1}),
        "+" : Operation.binaryOperation({$0 + $1}),
        "-" : Operation.binaryOperation({$0 - $1}),
        "=" : Operation.equals
    ];
    
    mutating func performOperation(_ symbol:String){
        print(symbol);
        if let mathematicalSymbol = operations[symbol] {
            switch(mathematicalSymbol){
            case  Operation.constant(let value):
                accumulator = value;
            case Operation.unaryOperation(let function):
                if accumulator != nil{
                    accumulator = function(accumulator!);
                }
            case Operation.binaryOperation(let function):
                if accumulator != nil{
                    pendingBinary = PendingBinaryOperation(function: function, firstOperand: accumulator!)
                    accumulator = nil;
                }
            case .equals:
                pendingBinaryOperation();
            }
        }
    }
    
    mutating func pendingBinaryOperation(){
        if pendingBinary != nil && accumulator != nil{
          accumulator = pendingBinary?.perform(width: accumulator!);
            pendingBinary = nil;
        }
    }
    
    mutating func setOperand(_ operand:Double){
        accumulator = operand;
    }
    
    var result : Double?{
        get{
            return accumulator
        }
    }
    
    private var pendingBinary : PendingBinaryOperation?
    
    private struct PendingBinaryOperation{
        let function :(Double, Double) ->Double;
        let firstOperand: Double;
        
        func perform(width secondOperand:Double)->Double{
            return function(firstOperand,secondOperand);
        }
    }
}
