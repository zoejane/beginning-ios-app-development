enum UDPolicingError: Error {
    case nameContainsLaser
    case itemFromCunia
    case valueLessThan10
}
var itemErrorSum = 0, nameErrorSum = 0, valueErrorSum = 0
var errorArray = [UDPolicingError.itemFromCunia: itemErrorSum,
                  UDPolicingError.nameContainsLaser: nameErrorSum,
                  UDPolicingError.valueLessThan10: valueErrorSum]

// var errorArray = [UDPolicingError:Int]()

// errorArray[.itemFromCunia] = 1

//errorArray[UDPolicingError.itemFromCunia] = Int(errorArray[.itemFromCunia]!) + 1

// errorArray[UDPolicingError.itemFromCunia]


itemErrorSum = 3
errorArray

errorArray[UDPolicingError.itemFromCunia].