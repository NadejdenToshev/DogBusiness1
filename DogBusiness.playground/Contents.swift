import UIKit

// This program will keep track of dogs and what they are doing

class Dog {
    // Define any properties or characteristics that all dogs have
    var name = ""
    var age = 0
    var locationX = 0
    var locationY = 0
    // Define any behaviors that all dogs have. These will be functions.
    func speak() {
        print("Bark!")
    }
    func showInfo() {
        print("Name is: \(name); Age is: \(age); Location is: \(locationX), \(locationY)")
    }
    
    func runToRandomLocation() {
        locationX = Int.random(in: 1...10)
        locationY = Int.random(in: 1...10)
    }
    
    func canSniffButt(other: Dog) -> Bool {
        // return true if self is at the same location as other
        return self.locationX == other.locationX && self.locationY == other.locationY
    }
    
    
    
}

var myDog = Dog()
myDog.name = "Sharo"
myDog.age = 2
var yourDog = Dog()
yourDog.name = "Pirin"
yourDog.age = 3

print("My dog's name is \(myDog.name). \(myDog.name)'s age is \(myDog.age)")
print("Your dog's name is \(yourDog.name). \(yourDog.name)'s age is \(yourDog.age)")

myDog.speak()
yourDog.speak()
myDog.locationX = 4
myDog.locationY = 3
myDog.showInfo()
yourDog.showInfo()

for _ in 1 ... 100 {
    myDog.runToRandomLocation()
    myDog.showInfo()
    if yourDog.canSniffButt(other: myDog) {
        print("Ewwww!")
    } else {
        print("Good dog!")
    }
}

