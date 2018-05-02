//  Calculator.swift
//  Calculator
//
//  Created by UCode on 4/21/18.
//  Copyright © 2018 UCode. All rights reserved.


import Foundation

class Calculator {
    
    
    var input: Double
    var output: Double
    var operation: Operation
    var decimalplace: Int
    
    
    init() {
        
        input = 0.0
        output = 0.0
        operation = .None
        decimalplace = 0
        
    }
    
    func numberPressed(number: Int){
        if decimalplace == 0 {
            input *= 10
        }
        input += Double(number) / pow(10.0, Double(decimalplace))
        if decimalplace > 0 {
            decimalplace += 1
        }
    }
    
    func clear(){
        input=0
        output=0
        operation = .None
        decimalplace = 0
    }
    func plusMinus() {
        input *= -1
    }
    func percent(){
        input /= 100
    }
    func addition(){
        if operation == .None {
            output = input
            input = 0
        }
        else {
            output += input
            input = 0
        }
        operation = .Addition
    }
    func subtraction(){
        if operation == .None {
            output = input
            input = 0
        }
        else {
            output -= input
            input = 0
        }
        operation = .Subtraction
        
    }
    func multiplication(){
        if operation == .None {
            output = input
            input = 0
        }
        else {
            output *= input
            input = 0
        }
        operation = .Multiplication
        
    }
    func division(){
        if operation == .None {
            output = input
            input = 0
        }
        else {
            output /= input
            input = 0
        }
        operation = .Division
        
    }
    func decimal(){
        if decimalplace == 0 {
            decimalplace = 1
        }
        
    }
    func equal(){
        if operation == .Addition {
            output += input
        }
        if operation == .Subtraction {
            output -= input
        }
        if operation == .Multiplication {
            output *= input
        }
        if operation == .Division {
            output /= input
        }
        
    }
}








