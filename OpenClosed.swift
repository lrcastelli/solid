// Two important characteristics:
    // * Open for extension
    // * Closed for modification

// This means you should be able to expand the capabilities of your types without
// having to alter them drastically to add what you need.

// ------------------------------------------------
protocol AnimalProtocol {
    func makeSound() -> String

}

class Cow: AnimalProtocol {
    func makeSound() -> String {
        return "Muuu"
    }
}

struct Zoo {
    let animals: [AnimalProtocol]
    func animalNoise() -> [String] {
        return animals.map { $0.makeSound() }
    }
}

let cow = Cow()
var zooAnimals = Zoo(animals: [cow])
zooAnimals.animalNoise() 
// output: [Muuu]

// Finally I'd like to add a new animal into the zoo.

class Tiger: AnimalProtocol {
    func makeSound() -> String {
        return "Roar"
    }
}

let tiger = Tiger()
zooAnimals = Zoo(animals: [cow], [tiger])
zoo.animalNoise()
// output [Muuu, Roar]
// ------------------------------------------------