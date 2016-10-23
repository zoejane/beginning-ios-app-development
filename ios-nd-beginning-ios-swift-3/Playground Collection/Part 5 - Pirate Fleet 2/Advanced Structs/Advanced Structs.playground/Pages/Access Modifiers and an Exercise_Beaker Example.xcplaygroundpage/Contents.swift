//: [Previous](@previous)
/*:
## Beaker Example Access Modifiers and Exercises
*/
//: ### Beaker Struct
public struct Beaker {
    
    public let volumeMilliliters: Double
    
    // The contents are pairs of (description, millileters). This is made private so that only the Beaker can modify the contents directly.
    private var contents: [String:Double] = [:]
    
    public init(volumeMilliliters: Double) {
        self.volumeMilliliters = volumeMilliliters
    }
    
    // These are US ounces
    private var volumeOunces: Double {
        get {
            return volumeMilliliters * 0.033814
        }
    }
    
    private var contentsVolume: Double {
        var volumeSum = 0.0
        for value in contents.values {
            print(value)
            volumeSum += value
        }
        return volumeSum
    }
    
    private var availableMilliliters: Double {
        print(contentsVolume)
        return volumeMilliliters - contentsVolume
    }
    
    // Adds contents to the beaker without overflowing the beaker's volume.
    public mutating func addContents(_ name: String, amount: Double) {
        let amountWithoutOverflowing = min(availableMilliliters, amount)
        if let existingAmount = contents[name] {
            print(contents[name])
            contents[name] = existingAmount + amountWithoutOverflowing
        } else {
            contents[name] = amountWithoutOverflowing
        }
    }
    
    public func listContents() -> String {
        return contents.description
    }
    
    // TODO: re-implement this, keeping in mind contents
    func canContainContents(otherBeaker: Beaker) -> Bool {
        // return volumeMilliliters >= otherBeaker.volumeMilliliters
        // The implementation should check how much empty space is left in the beaker and compare this to the amount of contents in otherBeaker.
        return availableMilliliters >= otherBeaker.contentsVolume
    }
}

var b = Beaker(volumeMilliliters: 100)
b.addContents("baking soda", amount: 40)
b.addContents("vinegar", amount: 140)
//b.listContents()

let beaker1 = Beaker(volumeMilliliters: 20)
b.canContainContents(otherBeaker: beaker1)

