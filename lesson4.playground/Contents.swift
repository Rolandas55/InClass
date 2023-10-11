import UIKit

//Functions

func multiplyNum() {
    print(3 * 3)
}

func multiplyNum(num n: Int) -> Int {
    return n * n
}

multiplyNum()
print(multiplyNum(num: 4))

func calc(_ add: Int) {
    print(add + add)
}

func calc(minus: Int) {
    print(minus-minus)
}

calc(4)
calc(minus: 4)

func averageCalc(_ numbers: Double ...) -> Double {
    var total = 0.0
    for myNumber in numbers {
        total += myNumber
    }
    return total / Double(numbers.count)
}

print(averageCalc(1, 2, 3, 4, 5, 6, 7, 8, 9))

let numberArray = [3, 6, 786, 5, 4, 6, 7, 8, 987]

func filterLessThan(value: Int, numbers: [Int]) -> [Int] {
    var filteredNumbers: [Int] = []
    for myNumber in numbers {
        if myNumber < value {
            filteredNumbers.append(myNumber)
        }
    }
    return filteredNumbers
}

print(filterLessThan(value: 10, numbers: numberArray))

func sinceBirth(fromDay day: Int, fromMonth month: Int, fromYear year: Int) {
    let currentDay = Date()
    var dateComponents = DateComponents()
    dateComponents.day = day
    dateComponents.month = month
    dateComponents.year = year
    
    let userCalendar = Calendar.current
    
    if let calculateDate = userCalendar.date(from: dateComponents) {
        let dayPassed = userCalendar.dateComponents([.day], from: calculateDate, to: currentDay).day
        let monthPassed = userCalendar.dateComponents([.month], from: calculateDate, to: currentDay)
        let yearPassed = userCalendar.dateComponents([.year], from: calculateDate, to: currentDay)
        
        print("Year passed \(yearPassed), months passed \(monthPassed), days passed \(dayPassed ?? 0)")
    }
}

sinceBirth(fromDay: 19, fromMonth: 4, fromYear: 2000)
