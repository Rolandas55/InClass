import UIKit

class Post {
    var title = ""
    var text = ""
    var author = ""
}

let firstPost = Post()

firstPost.title = "P title"
firstPost.text = "some text"
firstPost.author = "author_"

let secondPost = firstPost
let thirdPost = Post()

secondPost === firstPost
secondPost === thirdPost

print("\(firstPost.title)\n\(firstPost.text) is written by \(firstPost.author)")

class Comment {
    var user = ""
    var numberOfLikes = 0
    
    func addLikes() {
        numberOfLikes += 1
    }
}

let firstComment = Comment()
firstComment.user = "AA"

firstComment.addLikes()
firstComment.addLikes()
firstComment.addLikes()

print(firstComment.numberOfLikes)

//class needs initializers
class Human {
    var name: String
    var age: Int
    
    init(name: String = "anonymous", age: Int) {
        self.name = name
        self.age = age
    }
}

let person = Human(age: 120)
print(person.name, person.age)

class Parent {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func walk() {
        print("I can walk")
    }
    func eat() {
        print("Ican eat")
    }
}

let dad = Parent(name: "Sam", age: 30)

class Child: Parent {
    func feeding() {
        if age <= 2 {
            print("I need to feed my child")
        } else {
            print("can eat independently")
        }
    }
    func education() {
        if age >= 3 {
            print("child is in kindergarden")
        } else if age < 3 {
            print("too early for kindergarden")
        } else {
            print("It is too late for kindergarden")
        }
    }
}

let littleBoy = Child(name: "Tom", age: 1)

littleBoy.feeding()
littleBoy.education()


class Figure {
    func drawFigure() {
        print()
    }
}

class Circle: Figure {
    override func drawFigure() {
        print("draw circle")
    }
}

class Triangle: Figure {
    override func drawFigure() {
        print("draw triangle")
    }
}

let figure = Figure()
let circle = Circle()
let triangle = Triangle()

figure.drawFigure()
circle.drawFigure()
triangle.drawFigure()

func drawFigure(_ figure: Figure) {
    figure.drawFigure()
}

drawFigure(figure)
