//: Playground - noun: a place where people can play

import UIKit

// var str = "Hello, playground"

func lyricsForName(lyricsTemplate: String, fullName: String) -> String {
    
    let shortName = "name"
    
    let lyrics = lyricsTemplate
        .replacingOccurrences(of: "<FULL_NAME>", with: fullName)
        .replacingOccurrences(of: "<SHORT_NAME>", with: shortName)
    
    return lyrics
}

lyricsForName(lyricsTemplate: "nameddddd", fullName: "a")