//Day 6. Closure part 1.

// Creating basic closures

/*
 Functions used in this way are called closures, and although they work like functions they are written a little differently.
 */
let driving = {
    print("I'm driving in my car")
}
driving()

//Accepting parameters in a closure
/*
 To make a closure accept parameters, list them inside parentheses just after the opening brace, then write in so that Swift knows the main body of the closure is starting.
 */

let songAlbum = { (song:String) in
    print("My favourite song is: \(song)")
}
songAlbum("Switer than wine")

//Returning values from a closure

/*
 Closures can also return values, and they are written similarly to parameters: you write them inside your closure, directly before the in keyword.
 */
let songAlbumComplete = { (song:String,artist:String) -> String in
    return "My favourite song is \(song) by \(artist)"
}
let message = songAlbumComplete("Hanseikai","Rie Takahashi")

print(message)

//Closures as parameters

/*
 If we wanted to pass that closure into a function so it can be run inside that function, we would specify the parameter type as () -> Void. That means “accepts no parameters, and returns Void” – Swift’s way of saying “nothing”.
 */

func songs(action:()->Void){
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}
songs(action: driving)

//Trailing closure syntax

/*If the last parameter to a function is a closure, Swift lets you use special syntax called trailing closure syntax. Rather than pass in your closure as a parameter, you pass it directly after the function inside braces.
 
*/

songs(){
    print("I'm driving in my car")
}
songs{
    print("I'm driving in my car")
}
