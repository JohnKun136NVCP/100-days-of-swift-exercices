// Day 3. Operators and conditions
//Aritmetic operators.

let number1 = 12
let number2 = 4
// add and substract
let sum = number1+number2
let difference = number1-number2

//multiply and divide

let product = number1*number2

let divided = number1/number2

// module.

let remainder = 13&number2

//Operator overloading
//Integers
let score1 = 42
let score1y2 = 42 + 42
//String.

let phrase1 = "Never"
let phrase2 = phrase1 + "give up!"

//Arrays

let fistHalf = ["Chris","Jon"]
let secondHalf = ["Guy", "Will"]

let coldplay = fistHalf + secondHalf

//Compound assignment operators

var score = 95 //Exam for high school (points)

score += 12 //Exam for university (points)

// Similar like strings.

var quote = "Life is for "
quote += "living"

//Comparison operators

let fistExam  = 8
let secondExam = 9

//Equality and not queals
fistExam == secondExam
fistExam != secondExam

//less than and greater than or equal to another.
fistExam < secondExam
fistExam > secondExam
fistExam >= secondExam

//Also strings.

"Azawa" <= "Nagaroto"
//Conditions. if and print()

let fistCard = 11
let secondCard = 10

//Only if. If this option is true
if fistCard + secondCard == 21{
    print("Blackjack!")
}

//if - else. if first opcion is false then print "Regular cards"

if fistCard + secondCard == 21{
    print("Aces - lucky")
}else{
    print("Regular cards")
}

//if, if-else, else.

if fistCard + secondCard == 2{
    print("Aces -lucky!")
}else if fistCard + secondCard == 21{
    print("Blackjack!")
}else{
    print("Regular cards")
}

//Combining conditions
//&& for "and" || for "or".

let age1 = 12
let age2 = 21
//with and
if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}

//with or

if age1 > 18 || age2 > 18 {
    print("At least one is over 18")
}


// The ternary operator
/*
 The ternary operator is a condition plus true or false blocks
 all in one, split up by a question mark and a colon, all of
 which make it rather hard to read. Example
 */
print(fistCard==secondCard ? "Cards are the same" : "Cards are different")
//it's equal to write an if condition.

if fistCard == secondCard {
    print("Cards are the same")
}else{
    print("Cards are different")
}

// Switch statements

let weather = "sunny"

//switch block to print one of four diffrents messages:

switch weather{
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
default:
    print("Enjoy your day!")
}
/*
 default is required because Swift makes sure you cover all possible cases so that no eventuality is missed off.
 
 Swift will only run the code inside each case if your want  execution to continue on to the next case, use the 'fallthrough' keyword like this:
*/
switch weather{
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
    fallthrough
default:
    print("Enjoy your day!")
}

// Range operators
score = 85

switch score{
case 0..<50:// 0,1,...,50
    print("You failed badly")
case 50..<85://50,51,...,85
    print("You did OK.")
default:
    print("You did great!")
}
