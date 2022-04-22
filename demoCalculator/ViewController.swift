//
//  ViewController.swift
//  demoCalculator
//
//  Created by Austin Wu on 21/4/2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var calculatorSteps: UILabel!
    @IBOutlet weak var calculatorResult: UILabel!
    var appCalculation = AppCalculation()
    var calSteps:String = ""

    override func viewDidLoad()
    {
        super.viewDidLoad()
        clearAll()
    }
    func clearAll()
    {
        appCalculation.clearSteps()
        calculatorSteps.text = ""
        calculatorResult.text = ""
        
    }
    @IBAction func equalClick(_ sender: Any) {
        var strResult = appCalculation.executeCalculation()
        calculatorResult.text = strResult
        calculatorSteps.text = strResult
    }
    
    @IBAction func allClearClick(_ sender: Any) {
        clearAll()
    }
    
    func addToCalSteps(_ value: Character)
    {
        calculatorSteps.text = appCalculation.updateCalSteps(true, value)
    }
    
    @IBAction func backspaceClick(_ sender: Any) {
        calculatorSteps.text = appCalculation.updateCalSteps(false, " ")
        
    }
    
    @IBAction func divideClick(_ sender: Any) {
        addToCalSteps("/")
    }
    @IBAction func multiplyClick(_ sender: Any) {
        addToCalSteps("*")
    }
    @IBAction func subtractClick(_ sender: Any) {
        addToCalSteps("-")
    }
    @IBAction func addClick(_ sender: Any) {
        addToCalSteps("+")
    }
    @IBAction func decimalPointClick(_ sender: Any) {
        addToCalSteps(".")
    }
    @IBAction func zeroClick(_ sender: Any) {
        addToCalSteps("0")
    }
    @IBAction func oneClick(_ sender: Any) {
        addToCalSteps("1")
    }
    @IBAction func twoClick(_ sender: Any) {
        addToCalSteps("2")
    }
    @IBAction func threeClick(_ sender: Any) {
        addToCalSteps("3")
    }
    @IBAction func fourClick(_ sender: Any) {
        addToCalSteps("4")
    }
    @IBAction func fiveClick(_ sender: Any) {
        addToCalSteps("5")
    }
    @IBAction func sixClick(_ sender: Any) {
        addToCalSteps("6")
    }
    @IBAction func sevenClick(_ sender: Any) {
        addToCalSteps("7")
    }
    @IBAction func eightClick(_ sender: Any) {
        addToCalSteps("8")
    }
    @IBAction func nineClcik(_ sender: Any) {
        addToCalSteps("9")
    }
    
 
}

