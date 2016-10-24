//
//  ViewController.swift
//  SillySong
//
//  Created by Zoe Jane on 23/10/2016.
//  Copyright © 2016 Zoe Jane. All rights reserved.
//


import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var nameField: UITextField!
    
    @IBOutlet weak var lyricsView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        nameField.delegate = self
    }


    @IBAction func reset(_ sender: AnyObject) {
        nameField.text = ""
        lyricsView.text = ""
    }
    @IBAction func displayLyrics(_ sender: AnyObject) {
        guard let name = nameField.text, !name.isEmpty else {
            lyricsView.text = "Please enter your name."
            return
        }
        
        lyricsView.text = lyricsForName(lyricsTemplate: bananaFanaTemplate, fullName: nameField.text!)
    }
}

func shortNameFromName(name: String) -> String {
    // implementation here
    
    let lowercaseName = name.lowercased()
    let vowelSet = CharacterSet(charactersIn: "aeiou")
    
    if let firstVowelRange = lowercaseName.rangeOfCharacter(from: vowelSet) {
        return lowercaseName.substring(from: firstVowelRange.lowerBound)
    }
    
    return lowercaseName
}


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


// MARK: - UITextFieldDelegate
extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
    

}

