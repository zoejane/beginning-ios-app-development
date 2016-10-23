enum Season: Int {
    case fall
    case winter
    case spring
    case summer
}

var myFavoriteSeason = Season.fall
var favoriteActivity = ""

func a(){print(1)}
func b(){print(2)}

switch myFavoriteSeason {
case .fall: a()
case .winter: favoriteActivity = "Winter!"
case .spring: favoriteActivity = "Spring now!"
case .summer: favoriteActivity = "I love summer!"
}

enum SegueIdentifier: Int {
    case ShowPhoto
    case NewPhoto
    case Share
}



//var random = "Share"
var random = 0


let segue = SegueIdentifier(rawValue: random)
if let segue = segue {
    switch segue {
    case .ShowPhoto:
        print("Perform ShowPhoto")
        a()
    case .NewPhoto:
        print("Perform NewPhoto")
    case .Share:
        print("Perform Share")
    }
}