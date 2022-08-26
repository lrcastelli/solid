// Objects in a program should be replaceable with instances of their subtypes without altering the correctness of that program
// In other words, if you replace one object with another that's a subclass and this replacement could break the affected part.

// ------------------------------------------------

class Feline {
    func makeNoise() {
        print("Meow")
    }
}

class Lion: Feline {
    override func makeNoise() {
        print("ROARR")
    }
}

// This is where it violates the Liskov Substitution as doing so will break the parent class.
class Cheetah: Feline {
        override func makeNoise() {
        fatalError("dunno what my sound is")
    }
}

// ------------------------------------------------