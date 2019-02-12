import Foundation

let pizzaInInches : Int = 10

var numberOfSlices : Int {
    get {
        return pizzaInInches - 4
    }
    set {
        print("Number of slice now has a new value which is\(newValue)")
    }
}

numberOfSlices = 12



print(pizzaInInches)

let a = numberOfSlices * 2


