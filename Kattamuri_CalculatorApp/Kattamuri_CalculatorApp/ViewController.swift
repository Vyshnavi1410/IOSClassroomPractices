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
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func buttonAC(_ sender: UIButton) {
    }
    
    
    @IBAction func buttonC(_ sender: UIButton) {
        number = ""
        resultOutlet.text = ""
    }
    
    
    @IBAction func buttonPlusOrMinus(_ sender: UIButton) {
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
    }
    
    
    @IBAction func buttonEqual(_ sender: UIButton) {
        calculate()
    }
    
    func calculate(){
            let numArray : [Substring] = number.split(separator: Sign)
            
            if numArray.count >= 2 && numArray[1].count > 0 {
                var number1: Double! = Double(numArray[0])
                var number2: Double! = Double(numArray[1])
          
                switch  Sign {
                case "+":
                    number1 = number1 + number2
                    break
                case "-":
                    number1 = number1 - number2
                    break
                case "*":
                    number1 = number1 * number2
                    break
                case "÷":
                    number1 = number1 / number2
                    break
                
                default:
                    number1 = number1 + number2
                }
                    resultOutlet.text = String(number1)
                    number = String(number1)
            }
        }
}

