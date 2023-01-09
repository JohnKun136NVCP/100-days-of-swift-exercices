// Day 4. Loops, loops and more loops

//For loops
//Rango de numeros.

let count  = 1...10

for number in count{
    print("Number is \(number)")
}

//same  with arrays.

let albums = ["Viva la vida","X&Y","Parachute"]

for album in albums{
    print("\(album) is on Apple Music")
}
/*
 If you don't use the constant that constant that for loops give you
you should use an underscore insted so that Swift doesn't create needless values:
 */
print("Playes gonna")

for _ in 1...5{ //No need a constant
    print("Play")
}

//While loops
var number = 1

while number <= 20{
    print(number)
    number += 1
}
print("Ready or not, here I come!")


// Repeat loops

number = 1
repeat{
    print(number)
    number += 1
}while number <= 20
        
print("Ready or not, here I come!")

//repeat loop the code inside  the loop will always be executed at last onece, whereas while loop
// check their condition before their fist run

while false{ //Never executed
    print("This is false")
}


repeat{ //Just once will be executed
    print("This is false")
}while false

//Exiting loops
//You can exit a loop at any time using the break keyword.

var countDown = 10

while countDown >= 0{
    print(countDown)
    countDown -= 1
}
print("Blast off!")

//Using break keyworld
countDown = 10

while countDown >= 0{
    print(countDown)
    if countDown == 4{
        print("I'm bored. Let's go now!")
        break
    }
    countDown -= 1
}
print("Blast off!")


// Exiting multiple loops

for i in 1...10{
    for j in 1...10{
        let product = i * j
        print("\(i) * \(j) is \(product)")
    }
}


// If we wanted to exit part-way through we need to do two things. First, we give the outside
//loop a label, like this:


outerLoop: for i in 1...10{
    for j in 1...10{
        let product = i * j
        print("\(i) * \(j) is \(product)")
    }
}
// break and outerLoop

outerLoop: for i in 1...10{
    for j in 1...10{
        let product = i * j
        print("\(i) * \(j) is \(product)")
        
        if product == 50{
            print("It's a bulleye!")
            break outerLoop
        }

    }
}
// Skipping items
// If you just want to skip the current item and continue on to next one, you should use continue instead

for i in 1...10{
    if i % 2 == 1{
        continue
    }
    print(i)
}

// Infinite loops

var counter  = 0

while true{
    print(" ")
    counter += 1
    if counter == 273{
        break//if doesn't this break it will change to infinite loop
    }
}
