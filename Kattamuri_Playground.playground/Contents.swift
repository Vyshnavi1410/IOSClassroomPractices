import UIKit

var greeting = "Hello, playground"
var i=10;
print(i)
print("Hii",10,12.25)
print("Hello",29.2,100,30.2,"Hi")
var name = "Vyshnavi"
print("Hello \(name)!")
var age = 23
var age1 = age/2
print("You are \(age) years old and in another \(age) years, you will be \(age1)");
print("""
Hello
World!
""")
print("Hello All,\rWelcome to Swift Programming")

//Explicit declaration of datatype
//comma in a print statement is used as a space
let msg : String = "Hello!"
print(msg , "All",100)

//usage of terminator
print("Welcome to Swift Programming")
print("Fall 2021")
print("**********")
print("Welcome to Swift Programming" , terminator : " $ " )
print("Fall 2021")

//usage of seperator
print("The list of numbers are ")
print(1,2,3,4,5,6)
print("The new pattern is")
print(1,2,3,4,5,6,  separator: "-")

var message = "Hello World!"
message = "Hi"
print(message)

let pi = 3.14
print(pi)


//Explicit Declaration of Variable
var age : Int = 23
age = age * 2
print(age)

var awMessage = "This is Superb!"
print(awMessage)
print("awMessage")

var course1 = "Java"
var course2 = "IOS"
print(course1,course2)
print(course1,"-",course2)


print(10,20,30)
print(14.5,15.5)

//TUPLES
var httpError = (errorCode : 404 , errorMessage : "Page Not Found")
print(httpError)
print(httpError.errorCode,terminator:":")
print(httpError.errorMessage)

var name = ("John","Smith")
var fname = name.0
var lname = name.1
print(fname , terminator : ",")
print(lname)


var origin = (x :0 , y : 0)
var point = origin
print(origin)
print(point)

let city = (name : "Maryville" , population : 11,000)
let(cityName,cityPopulation) = (city.0,city.1)
print(cityName)
print(cityPopulation)

let groceries = ("bread","onions")
print(groceries.0)
print(groceries.1)
print(type(of:groceries))

var fname1 = "Joe"
var lname1 = "Root"
(fname , lname) = (lname , fname)
print("First Name is \(fname) and Last Name is \(lname)")

var cricketKit = ("handGloves",  "helmet",("bat","ball","wicket"),20)
print(cricketKit.0)
print(cricketKit.1)
print(cricketKit.2)
print(cricketKit.2.0)
print(cricketKit.2.1)
print(cricketKit.3)


//Operators
var a : Int = 10
var b : Int = 25
var c : Int = 5
print(b/a)
print(b/c)

var four = 4
var final = -four
print(final)


//while comparing tuples it returns true by comparing the first values of each tuple and returns false if both the tuples are equal and also checks the second value of each tuple if the first value of both the tuples are equal and then returns the value
var num = (4,5)
var num1 = (4,5)
print(num<num1)
