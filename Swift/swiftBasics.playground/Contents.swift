import UIKit

//Printing stuff
var str = "Hello, playground"
print("Hello world")

//Variables and constants
var a = 15
let b = 10

//Explicity stating type of constants
let c = 4
let d : Float = 4

let implicitDouble = 70.0

let name = "Jibran"
let age  = 23

//Printing values dynamically in print statements
print(name+"is"+String(age))

print (name+"is"+"\(age)")


//How to put in multiline strings   """
var multipleLines = """
Its pretty late to be
practising swift
"""


// A dictionary
var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
]
occupations["Kaylee"] = "Public Relations"
print(occupations)

// Initializing an empty array
var emptyArray = [String]()

//Optionals
var optionalString: String? = "Hello"
print(optionalString == nil)


var myBankBalance : String? = "10"
var balance : String?

// Execution of a block only when optional value not 'nil'
if let newbalance = balance {
    print (newbalance)
}

if let newbalance = myBankBalance {
    print (newbalance)
}


// Using '??' to print default value of an optional value when it is nil
var firstName : String? = "Jibran"
var lastName : String? = "Khan"

var fullName :String? = "Jibran \(lastName ?? "Ahmed")"



// Iterating through a dictionary
var players = ["Football":["messi","ronaldo"] ,
               "Cricket":["ponting","tendulkar","gilchrist"],
               "Basketball":["LeBron James","ShackONeill"]]

for (sport,playerlist) in players {
    for aPlayer in playerlist{
        
        print(sport+":"+aPlayer);
    }
}

// Trying out a 'for' loop
for i in 0..<4 {
  print("Hello")
}


// Functions
func myAge(name : String) -> Int {
    
    if name=="Jibran"{
    return 10
    }
    
    return 20
}

myAge(name : "Jibran")


func myAge(_ name : String) -> Int {
    
    if name=="Jibran"{
        return 10
    }
    
    return 20
}

myAge("Jibran")


//Trying out recursion

func print1to10(_ number: Int){
    
    if number>10{
    return
    }
        
    print(number)
    
    print1to10(number+1)
}

print1to10(1)

// Using Tuples to returb multiple values: (Here min and max)

func getMinAndMax(_ arr:[Int]) -> (min : Int, max: Int) {
    
    var max = -1000
    var min = 1000
    for i in 0..<arr.count{
        
        if arr[i]<min {
            min = arr[i]
        }
        
        if arr[i]>max {
            max = arr[i]
        }
    }
    
    return (min,max)
}

var arr = [ 2, 3, 1, 45]
getMinAndMax(arr)

/* Functions can be nested. Nested functions have access to variables that were declared in the outer function. You can use nested functions to organize the code in a function that is long or complex.
 
 */


func OuterFunction (_ value: Int) -> Int {
    
    var x : Int = value
    func increment(_ y: Int) -> Int{
        x = x + 100
        return y+5
    }
    
    
    increment(x)
    print(x)
    return 11
}

OuterFunction(10)





func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
returnFifteen()


//Functions are a first-class type. This means that a function can return another function as its value.

func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
increment(7)

//A function can take another function as its arguments

//--------------------------------------------------------------------------------------

//Closures are functions without the func keyword and the function name. They are also known as anonymous functions.

//Trying out closures


//Difference between function and closer :
/*
 FUNCTION VS CLOSURE
 Here are the key differences to remember between a function and a closure:
 FUNCTION
 has a name
 has func keyword
 has no in keyword
 CLOSURE
 has no name
 has no func keyword
 has in keyword
*/

var MyFirstName = { () -> String in
    return "jibran"
}

MyFirstName()

// Passing a closure as a parameter to a predefined array function 'map'. This will be used to modify the array the way the closure decides to .

// We will use this in two ways. Once by defining the closure inside the 'map' call.
// Or by simply defining the closure and assinging it to a variable and then passing this variable inside
// the map calll

//1.

let numbers = [100,200,300]


print(numbers.map({(number:Int)-> Int in
    return number*4;
}))

//2.

let definedClosure = {(number:Int)-> Int in
    return number*4;
}
print(numbers.map(definedClosure))



/*You can refer to parameters by number instead of by name—this approach is especially useful in very short closures. A closure passed as the last argument to a function can appear immediately after the parentheses. When a closure is the only argument to a function, you can omit the parentheses entirely.
*/

 let sortedNumbers = numbers.sorted() //$0 > $1 }
 print(sortedNumbers)

// Creating classes and initfunctions

class Student{
    var name : String
    
    init(){
        name = "Jibran"
    }
}

var Khan = Student()
print(Khan.name)

//Method overriding


class Parent {
    var firstName:String
    var secondName:String
    
    func fullName(firstName: String,secondName: String) -> String{
        return firstName + secondName
    }
    
    init(){
        firstName = ""
        secondName = ""
    }
}

class Child:Parent {
    override func fullName(firstName: String, secondName: String) -> String {
        return "No full name"
    }
}

var Mom = Parent()
print(Mom.fullName(firstName: "Seema", secondName: "Khan"))

var kid1 : Parent = Child()
kid1.fullName(firstName: "Jibran", secondName: "Khan")

var kid2 = Child()
kid2.fullName(firstName:"Fahad", secondName: "Khan")



//Getters and setters

class Square {
  
    var k : Int
    var side: Int{
        get{
            return 10
        }
        
        set{
            self.side = newValue
        }
    }
    
    
    init(){
        k = 0;
    }
}

var smallSquare = Square()
print(smallSquare.side)
print("hello")


//Will set

// LEARN HOW TO USE 'Will set'


//Enumerations and Structures

/*
 By default, Swift assigns the raw values starting at zero and incrementing by one each time, but you can change this behavior by explicitly specifying values. In the example above, Ace is explicitly given a raw value of 1, and the rest of the raw values are assigned in order. You can also use strings or floating-point numbers as the raw type of an enumeration. Use the rawValue property to access the raw value of an enumeration case.
 
 
 Swift 4 enumeration does not assign its members default value like C and Objective C.
 */

enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
//    func simpleDescription() -> String {
//        switch self {
//        case .ace:
//            return "ace"
//        case .jack:
//            return "jack"
//        case .queen:
//            return "queen"
//        case .king:
//            return "king"
//        default:
//            return String(self.rawValue)
//        }
//    }
}
let ace = Rank.ace
print(ace)
let aceRawValue = ace.rawValue

print(Rank.queen.rawValue)


//Trying out enumerations.
//Enum case cannot have raw value if Enum doesn't have a raw type

enum Card:Int{
    
    case spade = 1
    case hearts = 2
    
    func Colour() -> String {
        
        switch self{
         case .spade : return "Black"
        case .hearts : return "Red"
        }
     }
    
}

var pickedCard = Card.spade;
pickedCard.Colour()


//TODO:Associated values for enums. Do read through that


/*Use struct to create a structure. Structures support many of the same behaviors as classes, including methods and initializers. One of the most important differences between structures and classes is that structures are always copied when they are passed around in your code, but classes are passed by reference.
*/


// PROTOCOLS

/*
 A protocol defines a blueprint of methods, properties, and other requirements that suit a particular task or piece of functionality. The protocol can then be adopted by a class, structure, or enumeration to provide an actual implementation of those requirements. Any type that satisfies the requirements of a protocol is said to conform to that protocol.

Swift reports an error at compile-time if a protocol requirement is not fulfilled.)
*/

