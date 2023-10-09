import UIKit


var a = 10
var b = 9

print(a, b)

a > b
a < b
a >= b
a == b
a != b

//comment
///description
if a>b {
    print(a)
}
//command+A and control+I to fix code

switch a {
case 11:
    print("It is eleven")
case 10:
    print("It is ten")
case 12, 13:
    print("It is twelve or thirteen")
default:
    print("no idea")
}

let planetCount = 5
var countExpression = ""

switch planetCount {
case 0 where b == 9:
    countExpression = "none"
case 1...4:
    countExpression = "few"
    fallthrough
case 5 where a == 10, 6, 7, 8, 9, 10:
    countExpression = "several"
case 12...:
    countExpression = "dozen or more"
default:
    countExpression = "many"
}
print(countExpression)

