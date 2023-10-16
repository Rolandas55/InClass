import UIKit

enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    case sunday
}

var weekday = Weekday.monday

func setupSleepTimer() {
    switch weekday {
    case .monday:
        print("set up alarm 8am")
    case .tuesday:
        print("set up alarm 7am")
    case .wednesday:
        print("set up alarm 8am")
    case .thursday:
        print("set up alarm 8am")
    case .friday:
        print("set up alarm 8am")
    case .saturday:
        print("no alarm")
    case .sunday:
        print("no alarm")
    }
}

enum CalculationType: String {
    case addition = "+"
    case subtraction = "-"
    case multiplication = "*"
    case division = "/"
}

var calc = CalculationType.addition
print(calc.rawValue)

enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}

var somePlanet = Planet.mars

var marsPlanet = Planet(rawValue: 4)
print("\(marsPlanet!) is the \(somePlanet.rawValue) planet")

enum Weeked {
    case saturday(String)
    case sunday(String, Int, String)
}

var wnd = Weeked.sunday("setup bed time at", 11, "PM")
print(wnd)

struct ChessBoard {
    var playerName: String?
    var x: Int?
    var y: Int?
    
    func getPositionOnBoard() {
        print("The position of \(playerName ?? "") is x: \(x ?? 0) y: \(y ?? 0)")
    }
}

var playerOne = ChessBoard(playerName: "P1", x: 3, y: 6)
var playerTwo = ChessBoard(playerName: "P2", x:9, y: 12)

playerOne.getPositionOnBoard()
playerTwo.getPositionOnBoard()

class MacBook {
    var name: String?
    var year: Int?
    var color: String?
    
    init(name: String? = nil, year: Int? = nil, color: String? = nil) {
        self.name = name
        self.year = year
        self.color = color
    }
    
    func getSpecs() {
        print("name \(name ?? ""), year \(year ?? 1900), color \(color ?? "")")
    }
}

let macBookPro = MacBook(name: "MacBookPro", year: 2022, color: "grey")
let macBookAir = macBookPro
macBookAir.name = "MacBookAir"

macBookPro.getSpecs()
macBookAir.getSpecs()

struct iPhone {
    var name: String?
    var year: Int?
    var color: String?
    var capacity: Int?
    
    func getSpecs() {
        print("name \(name ?? ""), year \(year ?? 1900), color \(color ?? ""), capacity \(capacity)GB")
    }
}

let iPhoneSE = iPhone(name: "IPhone SE", year: 2019, color: "black", capacity: 50)
var iPhoneMini = iPhoneSE
iPhoneMini.name = "IPhone Mini"

iPhoneMini.getSpecs()
iPhoneSE.getSpecs()
