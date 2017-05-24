//String Concatenation
let country = "United States of America"
let state = "California"
let city = "Oakland"
let zip = "94619"
let zipCode = 94619

let address = city + ", " + state + ", " + zip + ", " + country

// String interpolation
// construct new string value from a mix of other strings AND numbers! 😁

let interpolatedAddress = "\(city), \(state), \(zipCode), \(country)"

let name = "Emily"
let greeting = "Hi there"
let greet = "\(greeting), \(name)"

/*
    Integers
*/

let programmingLanguage = "Swift"
let year = 2017 // Int type

/*
    Floating Point Numbers
*/

var version = 3.0 // Double type

/*
    Boolean
*/

let isAwesome = true

/*
    Type Safety
*/

var someStrong = ""
// someString = 12.0

let bestPlayer: String = "Michael Jordan"
let averagePointsPerGame: Double = 30.1
let yearOfRetirement: Int = 2003
let hallOfFame: Bool = true
