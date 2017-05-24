// Dictionaries vs. arrays

var todo = [1, 2, 3, 4, 5, 6]
todo[0]
todo[5]

/*

    Airport Code {key}      Airport Name {value}

    LGA                     La Guardia
    LHR                     Heathrow
    CDG                     Charles de Gaulle
    HKG                     Hong Kong International
    DXB                     Dubai International

*/

// Key Value Pair
// Dictionaries DO NOT preserve order.

var airportCodes: [String:String] =
    [
        "LGA": "La Guardia",
        "LHR": "Heathrow",
        "CDG": "Charles de Gaulle",
        "HKG": "Hong Kong International",
        "DXB": "Dubai International"
    ]

let currentWeather: [String:Double] = ["temperature": 75.0]

// Get

airportCodes["LGA"]

// Assign

airportCodes["SYD"] = "Sydney Airport"

// Updating existing key value

airportCodes["LGA"] = "La Guardia International Airport"

airportCodes.updateValue("Dublin Airport", forKey: "CDG")

// Removal

airportCodes.removeValue(forKey: "CDG")

// Dealing with non existent data
// Optional can contain one of two values. If it doesn't contain one it'll return nil

let newYorkAirport = airportCodes["LGA"]
type(of: newYorkAirport) // Example of Optional type

let orlandoAirport = airportCodes["MCL"] // Doesn't exist, so this optional value returns nil.
