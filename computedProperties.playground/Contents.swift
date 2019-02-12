import Foundation

//MARK: - Getter/Setter properties
let pizzaInInches : Int = 12
var numberOfPeople : Int = 6
let slicesPerPerson : Int = 5
var numberOfSlices : Int {
    get {
        return pizzaInInches - 4
    }
}

var numberOfPizza : Int {
    get {
        let numberOfPeopleFedPerPizza = numberOfSlices / slicesPerPerson
        return numberOfPeople / numberOfPeopleFedPerPizza
    }
    set {
        let totalSlices = numberOfSlices * newValue
        numberOfPeople = totalSlices / slicesPerPerson
    }
}

numberOfPizza = 4

print(numberOfPizza)


//MARK: - Oberved properties
var pizzaInInches : Int = 10 {
    willSet {
        //Fires right before value changes
        print(pizzaInInches)
        print(newValue)
        
    }
    didSet {
        //Changes right after value is set
        print(pizzaInInches)
        print(oldValue)
        if pizzaInInches >= 18 {
            print("Invalid size specified, pizzaInInches set to 18.")
            pizzaInInches = 18
        }
    }
}
var numberOfPeople : Int = 6
let slicesPerPerson : Int = 5
var numberOfSlices : Int {
    get {
        return pizzaInInches - 4
    }
}

var numberOfPizza : Int {
    get {
        let numberOfPeopleFedPerPizza = numberOfSlices / slicesPerPerson
        return numberOfPeople / numberOfPeopleFedPerPizza
    }
    set {
        let totalSlices = numberOfSlices * newValue
        numberOfPeople = totalSlices / slicesPerPerson
    }
}

numberOfPizza = 4

print(numberOfPizza)
