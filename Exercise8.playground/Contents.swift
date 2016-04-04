/*:
 **Exercise:** Create two classes `Dog` and `Cat`. Each will have properties of `breed`, `color`, `age` and `name`. They also have methods of `barking` (dog's) only, `meowing` (cats only), `eating`, `sleeping`, `playing`, and `chase`.
 */
/*:
 **Constraints:** You must also have:
 * Initializer & Deinitializer
 * Computed Properties
 * Property Observers
 * Method body is up to you, but your method signatures need parameter(s)
 */
import Foundation
//import UIKit

class Dog{
    var breed = ""
    var color = ""
    var age = 0
    
    var name: String = "" {
        didSet{
            print("Dog \(oldValue) was renamed to \(name)")
        }
    }
    
    var yearBorn: Int {
        get {
            let date = NSDate()
            let calendar = NSCalendar.currentCalendar()
            let components = calendar.components(NSCalendarUnit.Year, fromDate: date)
            return components.year - age
        }
    }
    
    init (name: String, breed: String){
        self.name = name
        self.breed = breed
    }
    deinit{
        print("Dog \(name) ran away")
    }
    func barking(){
        print("Dog \(name) is barking")
    }
    func eating(){
        print("Dog \(name) is eating")
    }
    func sleeping(){
        print("Dog \(name) is sleeping")
    }
    func playing(){
        print("Dog \(name) is playing")
    }
    func chase(cat: Cat){
        print("Dog \(name) is chasing Cat \(cat.name)")
    }
    
}

class Cat{
    var breed = ""
    var color = ""
    var age = 0
    var name = ""
    func meowing(){
        print("Cat \(name) is meowing")
    }
    func eating(){
        print("Cat \(name) is eating")
    }
    func sleeping(){
        print("Cat \(name) is sleeping")
    }
    func playing(){
        print("Cat \(name) is playing")
        
    }
    func chase(dog: Dog){
        print("Cat \(name) is chasing Dog \(dog.name)")
    }
}

//let dog1 = Dog()

var dog1 = Dog(name: "Fido", breed: "Mutt")
dog1.name = "Sadie"
dog1.age = 6
print("Dog \(dog1.name) was born in \(dog1.yearBorn)")
dog1.sleeping()
dog1.barking()
dog1.playing()

let cat1 = Cat()
cat1.name = "Dax"
cat1.meowing()

dog1.chase(cat1)
cat1.chase(dog1)
cat1.chase(Dog(name: "Gretchen", breed: "")) // deinit called since Dog is not retained





