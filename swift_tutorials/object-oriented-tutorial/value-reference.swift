// STRUCT

struct User {
    var fullName: String
    var email: String
    var age: Int
}

var someUser = User(fullName: "Emily", email: "em@em.com", age: 34)

var anotherUser = someUser
someUser.email = "blah@blah.com"

class Person {
    var fullName: String
    var email: String
    var age: Int

    init(fullName: String, email: String, age: Int) {
        self.fullName = fullName
        self.email = email
        self.age = age
    }
}

var somePerson = Person(fullName: "Emily Blah", email: "me@meme.com", age: 33)
var anotherPerson = somePerson
somePerson.email = "myname@apple.com"
anotherPerson.email

// REFERENCE TYPE (classes)- not copied when signed to a new variable. It is referenced to the existing instance

// use structs to represent simple values - coordinate points for example

// use classes to represent more than just values
// classes support inheretance to prevent code reuse.
// to subclass a base class you declare class and colon class youre inhereting from.
// initialize all properties in override init method if you want different information or values
