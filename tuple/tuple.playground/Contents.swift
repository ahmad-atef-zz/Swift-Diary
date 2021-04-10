import UIKit


var maybeSomething: String! = "hey"
maybeSomething.uppercased()

class Something {
    let someStr: String!
    init(str: String!) {
        self.someStr = str
        self.someStr?.description
    }
}
var optionString: String? = nil
var optionalStrng2 = Optional("123")

Something(str: optionString)
let forSureThing = maybeSomething // hey
forSureThing?.uppercased()

let anotherThing = forSureThing
anotherThing?.uppercased()




var pair: (Int, String)

// A Tuple is a lightweight custom ordered collection of multiple values. 😍

pair = (5, "hello")

// A Tuple is a pure swift language feature, it is not compatible with Objective-C. 🤌

// A tuple comes to solve the problem that a function will return only One value,
// the tuple is one value, but it is lightweight ordered custom collection of Multiple values 👌

func giveMeMoreThanOneValue() -> (Int, String) {
    pair
}

// Tuples come with numerous linguistic conveniences.

var idx: Int
var key: String

(idx, key) = (3 , "poo")
(idx, key) = pair


// Declare and initializing multiple variables simultaneously 🤩

let (ix, s) = (1, "Two")
let (font, textColor, backgroundColor, spacing, identifier) = (UIFont.preferredFont(forTextStyle: .headline), UIColor.label, UIColor.systemBackground, 10.0, "id")


// Ignore one of the assigned values 🙈
let aPair = (1, "Two")
let (_, f) = aPair
// f now is "Two"

// Swapping values is now super easy

var s1 = 3
var s2 = 5
(s1,s2) = (s2,s1)

// the enumerated method that we use in for...each returns a tuple
let str = "hello, world"
for (index, letter) in str.enumerated() {
    print(index, letter)
}
