// Binary Operators

let height: Double = 12 // in feet
let width: Double = 10 // in feet

let area: Double = height * width // Area in square feet

// 1 square meter  = 1 sq foot / 10.764

let areaInMeters = area / 10.764

// Equals operator

let string1 = "Hello!"
let string2 = "Hello!"
let string3 = "hello"

string1 == string2
string1 == string3

// not equal
string1 != string3

"a" > "b"
"A" < "a"

/*
    Operator Precedece
*/

var x = 100 + 100 - ((5 * 2) / 3) % 7


// Unary Operators //

var levelScore = 0
levelScore += 1
levelScore -= 1

//NOT operator

let on = true
let off = !on
