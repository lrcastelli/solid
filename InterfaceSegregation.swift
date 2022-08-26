// Adults should not be forced to depend upon interfaces they do not use.
// When designing a protocol you'll use a different places in your code. It's best to break that protocol into multiple
// smaller pieces where each piece has a specific role. That way, adults depend only on the part of protocol they need.

// ------------------------------------------------
// Wrong way
// ------------------------------------------------
protocol Action {
    func eat()
    func work()
}

class Adult: Action {
    func eat() {
        // eat.
    }
    
    func work() {
        // work.
    }
}

class Baby: Action {
    func eat() {
        // eat.
    }
    
    func work() {
        // Baby can't work.
    }
}

// ------------------------------------------------
// We should only use what we need
// Correct way
// ------------------------------------------------

protocol EatAction {
    func eat()
}

protocol WorkAction {
    func work()
}

class Adult: EatAction, WorkAction {
    func eat() {
        // eat.
    }
    
    func work() {
        // work.
    }
}

class Baby: EatAction {
    func eat() {
        // eat.
    }
}
// ------------------------------------------------