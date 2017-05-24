// CONTROL FLOW

var todo = ["Finish collection course", "Buy groceries", "Do laundry", "Check emails", "Pick up dry cleaning", "Order books online", "Mow the lawn"]

//print(todo[0])
//print(todo[1])
//print(todo[2])

// for name in array {}

for task in todo {
    print(task)
}

// Ranges

// 1...5 is 1 2 3 4 5
// Half open a..<b goes up to b-1
// 1..<5 is 1 2 3 4

var poop: [Int] = []

for number in 1...10 {
    poop.append(number)
    print(poop)
}


var results: [Int] = []

for multiplier in 1...10 {
    results.append(multiplier * 6)
    print(results)
}

// WHILE

var x = 0

while x <= 20 {
    print(x)
    x += 1
}

var index = 0

while index < todo.count {
    print(todo[index])
    index += 1
}

// REPEAT WHILE

var counter = 1

while counter < 1 {
    print("I'm inside the while loop")
    counter += 1
}

repeat {
    print("I'm inside the repeat loop")
    counter += 1
} while counter < 10


// IF ELSE

var temperature = 75

if temperature < 55 {
    print("It's getting cold, wear a jacket!")
} else if temperature < 65 {
    print("It's getting chilly, I recommend wearing a light sweater.")
} else {
    print("It is quite warm, no sweater needed!")
}

// LOGIGAL OPERATORS
var temp = 9

if temp > 7 && temp < 12 {
    print("Might want to wear a scarf with that jacket")
}

var isRaining = true
var isSnowing = false

//if isRaining || isSnowing {
//    print("Wear boots!")
//}

if !isRaining {
    print("It is not raining right now.")
}

if (isRaining || isSnowing) && temperature < 50 {
    print("Bundle up!")
}

var res: [Int] = []

for n in 1...100 {
    if (n % 7 == 0) && (n % 2 != 0) {
        res.append(n)
    }
}
print(res)

// SWITCH STATEMENTS

let airportCodes = ["LGA", "LHR", "CDG", "HKG", "DXB", "LGW", "JFK", "ORY"]

for airportCode in airportCodes {
    switch airportCode {
    case "LGA","JFK": print("New York")
    case "LHR","LGW": print("London")
    case "CDG","ORY": print("Paris")
    case "HKG": print("Hong Kong")
    default:
        print("I don't know which city that airport is in")
    }
}

//switch airportCodes[0] {
//case "LGA": print("New York")
//case "LHR": print("London")
//case "CDG": print("Paris")
//case "HKG": print("Hong Kong")
//default:
//    print("I don't know which city that airport is in")
//}

import GameKit

let randomTemperature = GKRandomSource.sharedRandom().nextInt(upperBound: 150)

switch randomTemperature {
    case 0..<32: print("Forget clothes, you are basically a popsicle!") // if temperature is very cold
    case 32..<45: print("It is quite cold, you'll need a jacket!")
    case 45..<70: print("It's a bit chilly, I recommend wearing a light sweater")
    case 70...100: print("It is quite hot!")
    default: print("Don't even bother to go outside!")
}

// CODE CHALLENGE

var europeanCapitals: [String] = []
var asianCapitals: [String] = []
var otherCapitals: [String] = []

let world = [
    "BEL": "Brussels",
    "LIE": "Vaduz",
    "BGR": "Sofia",
    "USA": "Washington D.C.",
    "MEX": "Mexico City",
    "BRA": "Brasilia",
    "IND": "New Delhi",
    "VNM": "Hanoi"
]

for (key, value) in world {
    // Enter your code below
    switch key {
        case "BEL", "LIE", "BGR": europeanCapitals.append(value)
        case "IND", "VNM": asianCapitals.append(value)
        default: otherCapitals.append("Mexico City")
                otherCapitals.append("Brasilia")
                otherCapitals.append("Washington, D.C.")
        print("European", europeanCapitals, "Asian", asianCapitals, "Other", otherCapitals)
        // End code
    }
}


// FIZZ BUZZ CHALLENGE
/*
IF the number is divisible by 3, print out FIZZ
IF the number is divisible by 5, print out BUZZ
IF the number is divisible by 3 AND 5, print out FIZZBUZZ
*/

let n = 5

    if (n % 3 == 0 && n % 5 == 0) {print("FIZZBUZZ")}
    if (n % 3 == 0 && n % 5 != 0) {print("FIZZ")}
    if (n % 5 == 0 && n % 3 != 0) {print("BUZZ")}
//    default: print("I don't know what's going on")

//func fizzBuzz(n: Int) -> String {
//    // Enter your code between the two comment markers
//    // End code
//    return "\(n)"
//}
