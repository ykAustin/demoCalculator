//
//  calculation.swift
//  demoCalculator
//
//  Created by Austin Wu on 22/4/2022.
//

import Foundation

class AppCalculation {

    var calSteps:String
    
    init(){
        calSteps = ""
    }
    
    func clearSteps(){
        calSteps = ""
    }
    
    func formatResult(result: Double) -> String
    {
        if(result.truncatingRemainder(dividingBy: 1) == 0)
        {
            return String(format: "%.0f", result)
        }
        else
        {
            return String(format: "%.2f", result)
        }
    }

    func nonnumericChar (_ char:Character) -> Bool{
        switch char{
        case "+":
            return true
        case "-":
            return true
        case "*":
            return true
        case "/":
            return true
        case "%":
            return true
        case ".":
            return true
        default:
            return false
        }
    }
    
    func updateCalSteps(_ addChar:Bool,_ steps:Character) -> String {
        if addChar == true{
            if (calSteps.count > 0) {
                if nonnumericChar(calSteps.last!){
                    if nonnumericChar(steps){
                        calSteps.removeLast()
                    }
                }
            }
            else if(calSteps.count == 0) {
                if nonnumericChar(steps){
                    return calSteps
                }
            }
            calSteps += String(steps)
        }
        else {
            if(calSteps.count > 0){
                calSteps.removeLast()
            }
        }
        return calSteps
    }
    
    func executeCalculation() -> String
    {
        if nonnumericChar(calSteps.last!){
            calSteps.removeLast()
            return calSteps
        }
        let checkedWorkingsForPercent = calSteps.replacingOccurrences(of: "%", with: "*0.01")
        let expression = NSExpression(format: checkedWorkingsForPercent)
        let result = expression.expressionValue(with: nil, context: nil) as! Double
        let resultString = formatResult(result: result)
        calSteps = resultString
        return resultString
    }
    

}
