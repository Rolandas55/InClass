import UIKit

let arrayOfStrings: [String] = ["p", "o", "dycd"]
var arrayOfInt = [Int]()

arrayOfStrings[2]

let arrayOfChars: [Character] = ["k", "d", "e", "e"]

print(arrayOfStrings)
dump(arrayOfStrings)

arrayOfInt = [5, 4, 3, 2, 7]
print(arrayOfInt)
arrayOfInt += [545, 3435345, 345]
arrayOfInt.append(4)
arrayOfInt.insert(15, at: 0)
print(arrayOfInt)
print(type(of: arrayOfInt))
var otherArray = [4, 7, 5, 7, 7]
var arraySum = arrayOfInt + otherArray
dump(arraySum)
arraySum.remove(at: 14) //first last all
arraySum.reverse()
arrayOfChars.sorted()
print(arrayOfChars)

let search = arrayOfInt.contains { integerr in
    integerr == 2
}

var twoDArray: [[Int]] = [[1, 2, 3], [2, 3, 4], [3, 4, 5]]
print(twoDArray[2][2])

var setOfInt: Set<Int> = []
var setOfChar: Set<Character> = []

setOfInt = [1, 2, 3, 4, 5, 6]
setOfInt.insert(43)
setOfInt.remove(5)
setOfInt.contains(1)
let sortedArray  = setOfInt.sorted()
print(sortedArray)
print(setOfInt)

var stringDict = Dictionary<String, String>()
var string2Dict: [String : String] = [:]

var student: [String: String] = [
    "name": "Juozas",
    "age": "16",
    "class": "A"
]
student.updateValue("17", forKey: "age")
student["age"]

var fruitList: [String: [String]] = [
    "A" : ["mango", "apple"],
    "B" : ["banana", "pear"]
]
print(fruitList["B"])
