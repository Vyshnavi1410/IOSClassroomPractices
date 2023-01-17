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
