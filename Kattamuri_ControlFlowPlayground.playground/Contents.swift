import UIKit

var greeting = "Hello, playground"
var marks = 42
if marks > 50 {
    print("The student had passed with \(marks) marks")
}
else{
    print("The student had managed to get \(marks) marks")
}

var inputNumber = -10
if inputNumber > 0{
    print("\(inputNumber) is a positive number")
}else if(inputNumber<0){
    print("\(inputNumber) is a negative number")
    if(inputNumber%2==0){
        print("\(inputNumber) is a negative even number")
    }
}
else{
    print("The number is 0")
}

let alphabet : Character = "c"
switch alphabet{
case "a","A":
    print("It is alphabet a or A")
case "b":
    print("It is alphabet b")
default:
    print("None of these cases are executed above")
}

let temp:Double = -10.0
switch temp{
case 30...60:
    print("It's really warm")
case ..<30:
    print("It's really cold")
default:
    print("Temp is unbearable")
}


