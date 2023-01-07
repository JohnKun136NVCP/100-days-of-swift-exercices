/*
    Day 2. Arrays, dictionaries, sets, and enums.
 */

//Arrays.
let chris = "Chris Martin"
let jon = "Jon Buckland"
let guy = "Guy Berriman"
let will = "Will Champion"

let coldplay = [chris,jon,guy,will]
/*
 Be careful: Swift crashes if you read an item that doesn’t exist. For example,
 trying to read coldplay[9] is a bad idea.

 */
coldplay[3]
coldplay

/*
    Arrays vs Set.
    Differences:
    - Items aren’t stored in any order; they are stored in what is effectively a random order.
    - No item can appear twice in a set; all items must be unique.
 
 */

// Create a set.

let OS = Set(["Windows","Linux","Mac"])
OS //Different orden.


/*
    Tuples.  Allow you to store several values together in a single value. That might sound like arrays, but tuples are different.
    1. You can’t add or remove items from a tuple; they are fixed in size.
    2. You can’t change the type of items in a tuple; they always have the same types they were created with.
    3. You can access items in a tuple using numerical positions or by naming them, but Swift won’t let you read numbers or names that don’t exist.
*/

var character = (first: "Ukyo",surname:"kuonji")
 
//Access item by number

character.0

//Access item by name

character.first

//Tuples vs sets vs arrays

// Tuples

/*
    If you need a specific, fixed collection of related values where each item has a precise position or name, you should use a tuple.
 */

let package = (type:"Book", number:102, day: "Monday", month:"January",year:2023)

// Sets.

/*
 If you need a collection of values that must be unique or you need to be able to check whether a specific item is in there extremely quickly, you should use a set:
 */
let set = Set(["Akane","Ranma","Tatewaki"])

// Arrays.

/*
    If you need a collection of values that can contain duplicates, or the order of your items matters, you should use an array:
 */

let animes = ["Ranma1/2","SAO","Tonikawa","Konosuba"]

//Dictionaries

let rate = [
    "Tonikawa": 4.9,
    "SAO":4.9,
    "Ranma1/2":4.9,
    "Konosuba":4.8
]
rate["SAO"]

/*
 Note: When using type annotations, dictionaries are written in brackets with a colon between your identifier and value types. For example, [String: Double] and [String: String].
 */

//Dictionary default values

let clasification = [
    "Tonikawa":"Romantic",
    "SAO":"Action"
]

clasification["Tonikawa"]

//Nil value

clasification["Konosuba"]

//To fix nil. clasification has key but any value for this key.
clasification["Konosuba",default: "Uknown"]

//Creating empty collections

// Array
var language = [String:String]()

language["Canada"] = "French"

//Empty array integers

var number = [Int]()

//Empty sets

var titles = Set<String>()
var year = Set<Int>()

//Similar syntax:
var scores = Dictionary<String,Int>()
var teams = Array<String>()


//Enum

let result =  "failed"
let result1 = "failure"
let result2 = "fail"

//To avoid that diferent strings.

enum Result{
    case success
    case failure
}

let result3 = Result.failure


//Enum associated values

enum Activity{
    case bored
    case watching(type:String)
    case playing(instrument:String)
    case talking(topic:String)
    case singing(volume: Int)
}


let watching = Activity.watching(type: "Anime")

// Enum raw values


enum Planet: Int{ //default value is 0
    case mercury = 1//0 -> 1
    case venus//1 -> 2
    case earth//2 -> 3
    case mars//3 -> 4
}
let earth = Planet(rawValue: 3)//Equal to venus
//However, if mercury is equal to 1 changed the value to venus.

/* SUMMARY
1.  Arrays, sets, tuples, and dictionaries let you store a group of items under a single value. They each do this in different ways, so which you use depends on the behavior you want.
 2. Arrays store items in the order you add them, and you access them using numerical positions.
 3. Sets store items without any order, so you can’t access them using numerical positions.
 4. Tuples are fixed in size, and you can attach names to each of their items. You can read items using numerical positions or using your names.
 5. Dictionaries store items according to a key, and you can read items using those keys.
 6. Enums are a way of grouping related values so you can use them without spelling mistakes.
 7. You can attach raw values to enums so they can be created from integers or strings, or you can add associated values to store additional information about each case.
*/
