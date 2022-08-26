// Depend upon abstractions, not concretions.
// Different parts of your code should not depend on concrete classes. They don't need that knowledge.
// This encourages the use of protocols instead of using concrete classes to connect parts of your app.

// ------------------------------------------------
// wrong way
// ------------------------------------------------

class NetworkRequest {
    func connect() {
        // connect to the db.
    }
}

class DatabaseController {
    private let networkRequest: NetworkRequest

    init(network: NetworkRequest) {
        self.networkRequest = network
    }

    func connectDatabase {
        networkRequest.connect()
    }
}

// ------------------------------------------------
// The way to get around this is probably to use protocol to avid tight coupling.
// ------------------------------------------------

protocol Database {
    func connect()
}

class NetworkRequest: Database {
    func connect() {
        // connect to the db.
    }
}

class DatabaseController {
    private let database: Database

    init(db: Database) {
        self.database = db
    }

    func connectDatabase() {
        database.connect()
    }
}
