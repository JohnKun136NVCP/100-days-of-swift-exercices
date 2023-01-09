//Day 5. Functions, parameters, and errors
//functions
func printHelp(){
    let message =  """
Welcome to MyApp!

Run this app inside a directory of images and
MyApp will resize them all into thumbnails
"""
    print(message)
}
//Now run that using printHelp() by itself

printHelp()

//Accepting parameters
//Common function
print("Hello, World!")

//And now with values and strong
func powerful(number:Int){
    print(number*number)
}
powerful(number: 2)

//Returning values
//using keyword 'return' and type data

func square(number: Int) -> Int{
    return number * number
}

let result = square(number: 8)

print(result)


//Parameter labels
/*
 Swift lets us provide two names for each parameter: one to be used externally when calling the function, and one to be used internally inside the function. This is as simple as writing two names, separated by a space.
 */
func sayHello(to name:String){
    print("Hello,\(name)")
}

/*
 The parameter is called to name, which means externally it’s called to, but internally it’s called name. This gives variables a sensible name inside the function, but means calling the function reads naturally:

 */
sayHello(to: "John")
//Omitting parameter labels

/*
 You might have noticed that we don’t actually send any parameter names when we call print() – we say print("Hello") rather than print(message: "Hello").
 */
func greet(_ person:String){
    print("Hello, \(person)!")
}
/*
 This can make some code more natural to read, but generally it’s better to give your parameters external names to avoid confusion. For example, if I say setAlarm(5) it’s hard to tell what that means – does it set an alarm for five o’clock, set an alarm for five hours from now, or activate pre-configured alarm number 5?


 */

greet("Rie Takahashi")

//Default parameters
/*
 You can give your own parameters a default value just by writing an = after its type followed by the default you want to give it. So, we could write a greet() function that can optionally print nice greetings:
 */
func greet2(_ person:String,nicely:Bool=true){
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}
greet2("Rie Takahashi")
greet2("Rie Takahashi",nicely: false)

//Variadic functions
/*
 You can make any parameter variadic by writing ... after its type. So, an Int parameter is a single integer, whereas Int... is zero or more integers – potentially hundreds.
 */
print("Haters","gonna","hate")

func square(numbers: Int...){
    for number in numbers{
        print("\(number) squared is \(number*number)")
    }
}
square(numbers: 1,2,3,4,5)

//Writing throwing functions

/*
 Sometimes functions fail because they have bad input, or because something went wrong internally. Swift lets us throw errors from functions by marking them as throws before their return type, then using the throw keyword when something goes wrong.

 First we need to define an enum that describes the errors we can throw. These must always be based on Swift’s existing Error type. We’re going to write a function that checks whether a password is good, so we’ll throw an error if the user tries an obvious password:

 */
enum PasswordError: Error{
    case obvious
}

func checkPassword(_ password:String)throws->Bool{
    if password == "password"{
        throw PasswordError.obvious
    }
    return true
}

//Running throwing functions

do{
    try checkPassword("password")
    print("That password is good!")
}  catch{
    print("You can't use that password")
}

//inout parameters
/*
 All parameters passed into a Swift function are constants, so you can’t change them. If you want, you can pass in one or more parameters as inout, which means they can be changed inside your function, and those changes reflect in the original value outside the function.


 */

func doubleInPlace(number: inout Int){
    number *= 2
}
/*
 To use that, you first need to make a variable integer – you can’t use constant integers with inout, because they might be changed. You also need to pass the parameter to doubleInPlace using an ampersand, &, before its name, which is an explicit recognition that you’re aware it is being used as inout.
 */
var myNum = 10
doubleInPlace(number: &myNum)
