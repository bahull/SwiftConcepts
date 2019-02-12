import Foundation


print("Testing")

print("Hi")

var width : Float = 1.5
var height : Float = 2.3

//Bucket of paint = 1.5sq m

var bucketsOfPaint : Int {
    get {
        let sqFt = width * height
        return Int((sqFt / 1.5).rounded(.up))
    }
    set {
        let areaCanCover = Double(newValue) * 1.5
        
        print("You will be able to paint \(areaCanCover)sq Meters")
    }
}

print(bucketsOfPaint)

bucketsOfPaint = 12



