//  SWIFT 3 FUNCTIONS PRACTICE

//area calculation for room number 1

//let length = 10
//let width = 12
//let firstArea = length * width

//area calculation for room number 2

//let secondLength = 14
//let secondWidth = 8
//let secondArea = secondWidth * secondLength

func area(length: Int, width: Int) -> Int {
    let areaOfRoom = length * width

    return areaOfRoom
}

// NEED this in order to execute the code inside the function: "calling" the function
let areaOfFirstRoom = area(length: 10, width: 12)
let areaOfSecondRoom = area(length: 20, width: 20)

// Return type of Void or use set of empty parenthasis, to return empty value
func someFunction() -> Void {}
func anotherFunction() -> () {}
func thisFunction() {}

//Converting celcius to fahrenheit
func temperatureInFahrenheit(temperature: Double) -> Double {
    let fahrenheit = (temperature * 9) / 5 + 32
    return fahrenheit
}
temperatureInFahrenheit(temperature: 30)

// NAMING CONVENTIONS

//Argument labels
// First perameter is the external name, second is the local name/variable
func remove(havingValue value: String) -> String {
    print(value)
    return (value)
}

//External name called when you call the function
remove(havingValue: "A")

//REMAINDER function
func getRemainder(value a: Int, divisor b: Int) -> Int {
    let remainder = a % b
    print(remainder)
    return remainder
}
let result = getRemainder(value: 15, divisor: 2)

//  EXAMPLE

//func carpetCostHaving(length: Int, width: Int, carpetColor color: String = "tan") -> Int {
//    //gray carpet is $1 sq ft
//    //tan carpet $2 sq ft
//    //blue carpet $4 sq ft
//    //multiply area per cost per unit
//    let areaOfRoom = area(length: length, width: width)
//    var price = 0
//    switch color {
//        case "gray": price = areaOfRoom * 1
//        case "tan": price = areaOfRoom * 2
//        case "blue": price = areaOfRoom * 4
//    default:    price = 0
//    }
//    return price
//}
//carpetCostHaving(length: 20, width: 20)

//TOUPLE: Set of values wrapped in parenthases
func carpetCostHaving(length: Int, width: Int, carpetColor color: String = "tan") -> (price: Int, carpetColor: String) {
    //gray carpet is $1 sq ft
    //tan carpet $2 sq ft
    //blue carpet $4 sq ft
    //multiply area per cost per unit
    let areaOfRoom = area(length: length, width: width)
    var price = 0
    switch color {
    case "gray": price = areaOfRoom * 1
    case "tan": price = areaOfRoom * 2
    case "blue": price = areaOfRoom * 4
    default:    price = 0
    }
    return (price, color)
}
let finalCarpet = carpetCostHaving(length: 20, width: 20)
//when you create a compound value with a touple, you can use .0 and .1 value to get that information
// its like getting info out of an object
finalCarpet.carpetColor // OR finalCarpet.1
finalCarpet.price       // OR finalCarpet.0

//SCOPE EXAMPLE
func arrayModifier(array: [Int]) {
    var arrayOfInts = array
    arrayOfInts.append(5)
    //variable only exists within the function because it was created within this function
    var secondArray = arrayOfInts
}
//global variable
var arrayOfInts = [1, 2, 3, 4]
arrayModifier(array: arrayOfInts)
//When you pass something into a function via a perameter, Swift makes a copy of the array and assigns to a new constant.
arrayOfInts

//methods don't have argument labels. that's because the external name is _ which means none
func someFunction(_ test: Int) {}
// external perameter is blank and internal is test

//LAT LONG code challenge
//Eiffel Tower - lat: 48.8582, lon: 2.2945
//Great Pyramid - lat: 29.9792, lon: 31.1344
//Sydney Opera House - lat: 33.8587, lon: 151.2140

func coordinates(for location: String) -> (Double, Double) {
    var lat = 0.0
    var lon = 0.0
    switch location {
        case "Eiffel Tower":    lat = 48.8582
                                lon = 2.2945
        case "Great Pyramid":   lat = 29.9792
                                lon = 31.1344
        case "Sydney Opera House":  lat = 33.8587
                                    lon = 151.2140
    default: "Sorry, there are no coordinates for that location"
    }
    return (lat, lon)
}
coordinates(for: "Eiffel Tower")
