// Collections and Control Flow

// Arrays - type dependent on contents of array

var todo: [String] = ["Finish collections course", "Buy groceries", "Respond to emails"]

// Add mew item to end of array using append method
todo.append("Pick up dry cleaning")

// Concatinating two arrays
[1,2,3] + [4]
// Won't save this to the acutal array, not assigning it back to todo
todo + ["Order book online"]

// Will save and assign new value back to todo
todo = todo + ["Wash clothes"]
// OR
todo += ["Another thing to do"]

// Immutable arrays - can not be changed, so you can't add items to it

let secondTaskList = ["Mow the lawn"]

// Reading from arrays

let firstTask = todo[0]
let thirdTask = todo[2]

// Modifying existing values in an array
// Mutating an array

todo[4] = "Brush teeth"

// Insert new item
// Insert using indexes

todo.insert("Watch TV", at: 2)

todo

// Removing items from arrays

todo.remove(at: 2)

todo

// Challenge
var arrayOfInts: [Int] = [1, 2, 3, 4, 5, 6]
arrayOfInts.append(7)
arrayOfInts += [8]
let fifthNumber = arrayOfInts[4]
fifthNumber
