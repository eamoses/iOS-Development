// CLASSES
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

let coordinatePoint = Point(x: 0, y: 0)

coordinatePoint.x
coordinatePoint.points()

// Always write init methods within the class
//Enemies
class Enemy {
    var life: Int = 2
    let position: Point

    // Delays the assigning of values until you have more data
    init(x: Int, y: Int) {
        self.position = Point(x: x, y: y)
    }

    func decreaseLife(by factor: Int) {
        //every time you call the decreaseLife method, the life in the Enemy class is
        //decreased by 1
        life -= factor
    }
}

// The body of SuperEnemy is the same as Enemy, it's inhereting all the same information
class SuperEnemy: Enemy {
    let isSuper: Bool = true

    // overrides the init in the enemy class
    override init(x: Int, y: Int) {
        // use super keyword because super enemy is a subclass of the enemy superclass
        super.init(x: x, y: y)
        // self refers to superenemy
        self.life = 50
    }
}

//Towers
class Tower {
    let position: Point
    var range: Int = 1
    var strength: Int = 1

    init(x: Int, y: Int) {
        self.position = Point(x: x, y: y)
    }

    // The task of this method is to fire at the enemy, not determining range or any other aspect
    func fire(at enemy: Enemy) {
        if isInRange(of: enemy) {
            enemy.decreaseLife(by: strength)
            print("GOTCHA")
        } else {
            print("Darn, out of range!")
        }
    }

    func isInRange(of enemy: Enemy) -> Bool {
        // Check if the target position is within the array of positions around us
        let availablePositions = position.points(inRange: range)

        for point in availablePositions {
            if point.x == enemy.position.x && point.y == enemy.position.y {
                return true
            }
        }
        return false
    }
}

class LaserTower: Tower {

    override init(x: Int, y: Int) {
        super.init(x: x, y: y)
        self.range = 100
        self.strength = 100
    }

    override func fire(at enemy: Enemy) {
        while enemy.life >= 0 {
            enemy.decreaseLife(by: strength)
        }
        print("Enemy destroyed!")
    }
}

//let firstTower = Tower(x: 0, y: 0)
//let laserTower = LaserTower(x: 2, y: 2)
//// Enemy is the parent - the super class. SuperEnemy is the child or the subclass
//let enemy = Enemy(x: 1, y: 1)
//let superEnemy = SuperEnemy(x: 2, y: 2)
//superEnemy.life
//firstTower.fire(at: enemy)
//laserTower.fire(at: enemy)


//EXERCISE
class Shape {
    var numberOfSides: Int

    init(sides numberOfSides: Int) {
        self.numberOfSides = numberOfSides
    }
}
let someShape = Shape(sides: 32)

//EXERCISE

struct Location {
    let latitude: Double
    let longitude: Double
}

class Business {
    let name: String
    let location: Location

    init(name: String, location: Location) {
        self.name = name
        self.location = location
    }
}
let someBusiness = Business(name: "My Business", location: Location(latitude: 12.234, longitude: 123.345))

// CLASS INHERITANCE
// EXERCISE

class Vehicle {
    var numberOfDoors: Int
    var numberOfWheels: Int

    init(withDoors doors: Int, andWheels wheels: Int) {
        self.numberOfDoors = doors
        self.numberOfWheels = wheels
    }
}

// Enter your code below
class Car: Vehicle {
    let numberOfSeats: Int = 4
}
let someCar = Car(withDoors: 4, andWheels: 4)

// EXERCISE

class Person {
    var firstName: String
    let lastName: String

    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }

    func fullName() -> String {
        return "\(firstName) \(lastName)"
    }
}

// Enter your code below
class Doctor: Person {

    override init(firstName: String, lastName: String) {
        super.init(firstName: firstName, lastName: lastName)
        self.firstName = firstName
    }

    override func fullName() -> String {
        return "Dr. \(lastName)"
    }
}
let someDoctor = Doctor(firstName: "Dr.", lastName: "Smith")
