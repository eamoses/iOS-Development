// OBJECT ORIENTED SWIFT - CUSTOM DATA TYPES

// Touple example
let coordinate1: (x: Int, y: Int) = (0, 0)
coordinate1.x

// Struct example - STORED PROPERTIES

struct Point {
    let x: Int
    let y: Int
    // all of init stored properties need to have values
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }

    /// Returns the surrounding points in range of
    /// the current one
    func points(inRange range: Int = 1) -> [Point] {
        /// An empty array of objects in Point
        var results = [Point]()

        let lowerBoundOfXRange = x - range
        let upperBoundOfXRange = x + range

        let lowerBoundOfYRange = y - range
        let upperBoundOfYRange = y + range

        for xCoordinate in lowerBoundOfXRange...upperBoundOfXRange {
            for yCoordinate in lowerBoundOfYRange...upperBoundOfYRange {
                let coordinatePoint = Point(x: xCoordinate, y: yCoordinate)
                results.append(coordinatePoint)
            }
        }

        return results
    }
}

// Method: is associated with a particular object (The one above is an instance method bc
// it can only be called once we call the instance)
// The append method is associated with the array type, so it's called a method
// ONE INSTANCE of the Struct Point
let coordinatePoint = Point(x: 0, y: 0)
coordinatePoint.x
coordinatePoint.points()

// EXERCISE
struct Book {
    let title: String
    let author: String
    let price: Double
}

let myBook = Book(title: "Animal Farm", author: "George Orwell", price: 6.00)
myBook.title

// EXERCISE - return a string that's apersons full name

struct Person {
    let firstName: String
    let lastName: String

    func fullName() -> String {
        // use the Person struct to create an instance of
        // Person and assign it to a constant named aPerson
        // Assign any values you want to the first and last
        // name properties
        // Once you have an instance, call the instance
        // method and assign the full name to a constant
        // named myFullName
        return "\(firstName) \(lastName)"
    }
}
// Must happen outside of the actual struct
let aPerson = Person(firstName: "Emily", lastName: "Moses")
let myFullName = aPerson.fullName()

// EXERCISE - initialization

struct RGBColor {
    let red: Double
    let green: Double
    let blue: Double
    let alpha: Double

    let description: String

    // Add your code below
    init(red: Double, green: Double, blue: Double, alpha: Double) {
        self.red = red
        self.green = green
        self.blue = blue
        self.alpha = alpha
        self.description = "red: \(red), green: \(green), blue: \(blue), alpha: \(alpha)"
    }
}
var myRGB = RGBColor(red: 30.0, green: 100.0, blue: 41.0, alpha: 15.0)
