import UIKit

func shortNameFromName(name: String) -> String {
    // implementation here

    var nameLowercase = name.lowercased()
    
    let nameCharactersArray = Array(nameLowercase.characters)
    var shortName = nameCharactersArray
    
    let vowelArray = Array("aeiou".characters)
    
    var i = 0
    // while char is a constant, remove it
    while(!vowelArray.contains(nameCharactersArray[i])){
        shortName.remove(at: 0)
        i = i + 1
    }

    return String(shortName)
}

shortNameFromName(name: "Nate")
// Shows 'ate'
shortNameFromName(name: "Talia")
// Shows 'alia'

let bananaFanaTemplate = [
    "<FULL_NAME>, <FULL_NAME>, Bo B<SHORT_NAME>",
    "Banana Fana Fo F<SHORT_NAME>",
    "Me My Mo M<SHORT_NAME>",
    "<FULL_NAME>"].joined(separator: "\n")

func lyricsForName(lyricsTemplate: String, fullName: String) -> String {
    
    let shorName = shortNameFromName(name: fullName)
    
    let lyric = lyricsTemplate
        .replacingOccurrences(of: "<FULL_NAME>", with: fullName)
        .replacingOccurrences(of: "<SHORT_NAME>", with: shorName)

    return lyric
}


lyricsForName(lyricsTemplate: bananaFanaTemplate, fullName: "Zoe")


