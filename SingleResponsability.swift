// Single Responsability - Code example (bad way)
//
// ------------------------------------------------

struct Person {
    let name: String
    let age: Int
    
    func checkAge() -> String {
        if age < 18 {
            return "Underage"
        } else {
            return "Qualified"
        }
    }
}

let person = Person(name: "Leo", age: 30)
person.checkAge()

// ------------------------------------------------
// Correct way
// ------------------------------------------------

// 1st responsibility in one class
struct Person {
    let name: String
    let age: Int
}

// 2nd resopnsability in another class

struct AgeVerifier {
    func checkAge(age: Int) -> String {
        if age < 18 {
            return "Underage"
        } else {
            return "Qualified"
        }
    }
}

let person = Person(name: "Leo", age: 30)
let verifyAge = AgeVerifier()
verifyAge.checkAge(age: person.age)

// ------------------------------------------------
