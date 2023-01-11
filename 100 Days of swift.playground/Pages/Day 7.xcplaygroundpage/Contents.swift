// Day 7. Clousures part 2.
//Using closures as parameters when they accept parameters

/*
 We’ve been using () -> Void to mean “accepts no parameters and returns nothing”, but you can go ahead and fill the () with the types of any parameters that your closure should accept.
 */

func travel(action:(String)->Void){
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}

travel{(place:String)in
    print("I'm going to \(place) in my car.")
}

//Using closures as parameters when they return values
/*We’ve been using () -> Void to mean “accepts no parameters and returns nothing”, but you can replace that Void with any type of data to force the closure to return a value.
*/

func travel(action:(String)->String){
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

travel{(place:String)->String in
    return "I'm going to \(place) in my car."
}
//Shorthand parameter names

func travel1(action:(String)->String){
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}
// However, Swift knows the parameter to that closure must be a tring, so we can remove it:

travel1{ place->String in
    return "I'm going to \(place) in my car"
}
//or
travel1{place in
    "I'm going to \(place) in my car."
}
/*Swift has a shorthand syntax that lets you go even shorter. Rather than writing place in we can let Swift provide automatic names for the closure’s parameters. These are named with a dollar sign, then a number counting from 0.
 
*/
travel1{
    "I'm going to \($0) in my car"
}
//Closures with multiple parameters

/*This time our travel() function will require a closure that specifies where someone is traveling to, and the speed they are going. This means we need to use (String, Int) -> String for the parameter’s type:
 
*/

func travel(action:(String,Int)->String){
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}
/*
 We’re going to call that using a trailing closure and shorthand closure parameter names. Because this accepts two parameters, we’ll be getting both $0 and $1:
 */

travel{
    "I'm going to \($0) at \($1) miles per hour"
}

//Returning closures from functions
/*
 The syntax for this is a bit confusing a first, because it uses -> twice: once to specify your function’s return value, and a second time to specify your closure’s return value.

 */


func travel() ->(String) ->Void{
    return{
        print("I'm going to \($0)")
    }
}

let result = travel()
result("London")
//It’s technically allowable – although really not recommended! – to call the return value from travel() directly:

//let result2  = travel()("London")

//Capturing values
/*If you use any external values inside your closure, Swift captures them – stores them alongside the closure, so they can be modified even if they don’t exist any more.
 
*/

func travel2() -> (String) -> Void{
    var counter  = 1
    return{
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}
let result2 = travel2()
result2("London")
result2("London")
result2("London")
