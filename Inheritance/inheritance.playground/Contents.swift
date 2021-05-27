import Foundation

class Quadruped {
    func walk() {
        print("walk")
    }
}

class Cat: Quadruped {
    func meow() {
        print("meow..meow")
    }

    func runFrom(dog: NoisyDog) {
        print("run run")
    }
}

class Kitten: Cat {
    override func meow() {
        print("meow")
    }

    override func runFrom(dog: Dog?) {
        print("run")
    }
}

class Dog: Quadruped {
    func bark() {
        print("woof")
    }

    func barkAt(cat: Kitten) {
        print("woof cat")
    }
}

class NoisyDog: Dog {
    override func bark() {
        print("woof..woof..woof")
    }

    override func barkAt(cat: Cat) { // defined in Superclass with Kitten Type
        print("woof..woof..woof cat")
    }
}




let fido = Dog()
fido.walk()
fido.bark()

let max = NoisyDog()
max.walk()
max.bark()

let luna = Cat()
luna.walk()

let bella = Kitten()
bella.walk()


fido.barkAt(cat: bella) // Dog can bark only on Kitten, not any Cat

max.barkAt(cat: bella)
max.barkAt(cat: luna) // Noisy Dog bark at any Cat because it overrides the barkAt() method with SuperClass Type (Cat)



//1. Superclass can define smaller domain and the subclass can expand it
//barkAt(cat: Kitten) in Dog superclass, can be overridden with barkAt(cat: Cat) in NoisyDog subclass
// and the opposite is invalid.
// If Superclass defines function with a superclass params, Subclass can't override it with subclass params

// Cat:
// func runFrom(dog: Dog)

// Kitten:
// override func runFrom(dog: NoisyDog) ❌
// override func runFrom(dog: Dog?) 👍

//2. Subclass can override the superclass parameter with three options:
// 1) Optional to the same parameter type. (Kitten? <- Kitten)
// 2) Superclass to the parameter type. (Cat <- Kitten)
// 3) Optional to Superclass to the parameter type. (Cat? <- Kitten)

// Dog:
// func barkAt(cat: Kitten)
//
// NoisyDog:
// override func barkAt(cat: Cat) 👍
// override func barkAt(cat: Cat?) 👍
// override func barkAt(cat: Kitten?) 👍

// 🌈 The complier is always pushing for expanding and accepting the more general domains.

