//
//  ViewController.swift
//  Kattamuri_CalculatorApp
//
//  Created by Kattamuri,Vyshnavi on 2/14/23.
//

import UIKit

class ViewController: UIViewController {
    var number : String = ""
    var Sign: Character = "A"
    @IBOutlet weak var resultOutlet: UILabel!
    
    func calculate(){
            let numArray : [Substring] = number.split(separator: Sign)
            
            if numArray.count >= 2 && numArray[1].count > 0 {
                var number1: Double! = Double(numArray[0])
                var number2: Double! = Double(numArray[1])
                var res = 0
                switch  Sign {
                case "+":
                    res = Int(number1 + number2)
                    resultOutlet.text = String(res)
                    break
                case "-":
                    res = Int(number1 - number2)
                    resultOutlet.text = String(res)
                    break
                case "*":
                    res = Int(number1 * number2)
                    resultOutlet.text = String(res)
                    break
                case "÷":
                    var result = number1/number2
                    if(number2 == 0){
                        resultOutlet.text = "Not a number"
                    }
                    else {
                        resultOutlet.text = "\(round(result * 100000) / 100000.0)"
                    }
                    break
                case "%":
                    var res = number1.truncatingRemainder(dividingBy : number2)
                    if(res.truncatingRemainder(dividingBy: 1)==0){
                        resultOutlet.text = "\(Int(res))"
                    }
                    else {
                        resultOutlet.text = "\(round(res * 100000) / 100000.0)"
                    }
                case " ":
                    resultOutlet.text = number
                default:
                    resultOutlet.text = "Invalid Operation"
                }
            }
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func buttonAC(_ sender: UIButton) {
        number = ""
        resultOutlet.text = ""
    }
    
    
    @IBAction func buttonC(_ sender: UIButton) {
        var n = resultOutlet.text!
        if(!n.isEmpty){
            n.removeLast()
            number = n
            resultOutlet.text = number
        }
    }
    
    
    @IBAction func buttonPlusOrMinus(_ sender: UIButton){
        let numArray : [Substring] = number.split(separator: Sign)
        
        if numArray.count >= 2 && numArray[1].count > 0 {
            var number1: Double! = Double(numArray[0])
            var number2: Double! = Double(numArray[1])
            var res = 0
            switch  Sign {
            case "+":
                res = Int(number1 - number2)
                resultOutlet.text = String(res)
                break
            case "-":
                res = Int(number1 + number2)
                resultOutlet.text = String(res)
                break
            default:
                break
            }
    }
        Sign = " "
}
    
    
    @IBAction func buttonDivide(_ sender: UIButton) {
        calculate()
        Sign = "÷"
        number.append("÷")
        resultOutlet.text = number
    }
    
    
    @IBAction func buttonSeven(_ sender: UIButton) {
        number.append("7")
        resultOutlet.text = number
    }
    
    
    @IBAction func buttonEight(_ sender: UIButton) {
        number.append("8")
        resultOutlet.text = number
    }
    
    
    @IBAction func buttonNine(_ sender: UIButton) {
        number.append("9")
        resultOutlet.text = number
    }
    
    @IBAction func buttonX(_ sender: UIButton) {
        calculate()
        Sign = "*"
        number.append("*")
        resultOutlet.text = number
        
    }
    
    
    @IBAction func buttonFour(_ sender: UIButton) {
        number.append("4")
        resultOutlet.text = number
    }
    
    
    @IBAction func buttonFive(_ sender: UIButton) {
        number.append("5")
        resultOutlet.text = number
    }
    
    
    @IBAction func buttonSix(_ sender: UIButton) {
        number.append("6")
        resultOutlet.text = number
    }
    
    
    @IBAction func buttonMinus(_ sender: UIButton) {
         calculate()
         Sign = "-"
         number.append("-")
         resultOutlet.text = number
    }
    
    @IBAction func buttonOne(_ sender: UIButton) {
        number.append("1")
        resultOutlet.text = number
    }
    
    
    @IBAction func buttonTwo(_ sender: UIButton) {
        number.append("2")
        resultOutlet.text = number
    }
    
    
    @IBAction func buttonThree(_ sender: UIButton) {
        number.append("3")
        resultOutlet.text = number
    }
    
    
    @IBAction func buttonPlus(_ sender: UIButton) {
        calculate()
        Sign = "+"
        number.append("+")
        resultOutlet.text = number
    }
    
    
    @IBAction func buttonZero(_ sender: UIButton) {
        number.append("0")
        resultOutlet.text = number
    }
    
    
    @IBAction func buttonDot(_ sender: UIButton) {
        number.append(".")
        resultOutlet.text = number
    }
    
    
    @IBAction func buttonModulo(_ sender: UIButton) {
        calculate()
        Sign = "%"
        number.append("%")
        resultOutlet.text = number
    }
    
    
    
    @IBAction func buttonEqual(_ sender: UIButton) {
        calculate()
    }
    
    
}

