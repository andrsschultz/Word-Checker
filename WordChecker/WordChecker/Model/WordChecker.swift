//
//  WordChecker.swift
//  WordChecker
//
//  Created by Andreas Schultz on 07.01.19.
//  Copyright © 2019 Andreas Schultz. All rights reserved.
//

import Foundation

func checkIfWordIsValid(wordToCheck: String) -> Bool {
    
    var isTextValid: Bool?
    
    if let path = Bundle.main.path(forResource: "OfficialScrabbleWordListGerman", ofType: "txt") {
    
        
        do {
            let data = try String(contentsOfFile: path, encoding: .utf8)
            let myStrings = data.components(separatedBy: .newlines)
            print(type(of: myStrings))
            print(myStrings.count)
            if myStrings.contains(wordToCheck) {
                print("\(wordToCheck) is valid!")
                isTextValid = true
            } else {
                print("\(wordToCheck) is not valid!")
                isTextValid = false
            }
        } catch {
            print(error)
        }
        
    }
    
    return isTextValid!
    
}


func pointsForWord(word: String) -> Int {
    
    let pointsForA = word.countInstances(of: "A")*1
    let pointsForB = word.countInstances(of: "A")*3
    let pointsForC = word.countInstances(of: "A")*4
    let pointsForD = word.countInstances(of: "A")*1
    let pointsForE = word.countInstances(of: "A")*1
    let pointsForF = word.countInstances(of: "A")*4
    let pointsForG = word.countInstances(of: "A")*2
    let pointsForH = word.countInstances(of: "A")*2
    let pointsForI = word.countInstances(of: "A")*1
    let pointsForJ = word.countInstances(of: "A")*6
    let pointsForK = word.countInstances(of: "A")*4
    let pointsForL = word.countInstances(of: "A")*2
    let pointsForM = word.countInstances(of: "A")*3
    let pointsForN = word.countInstances(of: "A")*1
    let pointsForO = word.countInstances(of: "A")*2
    let pointsForP = word.countInstances(of: "A")*4
    let pointsForQ = word.countInstances(of: "A")*10
    let pointsForR = word.countInstances(of: "A")*1
    let pointsForS = word.countInstances(of: "A")*1
    let pointsForT = word.countInstances(of: "A")*1
    let pointsForU = word.countInstances(of: "A")*1
    let pointsForV = word.countInstances(of: "A")*6
    let pointsForW = word.countInstances(of: "A")*3
    let pointsForX = word.countInstances(of: "A")*8
    let pointsForY = word.countInstances(of: "A")*10
    let pointsForZ = word.countInstances(of: "A")*3
    
    let pointsForÄ = word.countInstances(of: "Ä")*6
    let pointsForÜ = word.countInstances(of: "Ä")*6
    let pointsForÖ = word.countInstances(of: "Ä")*8

    

    return pointsForA+pointsForB+pointsForC+pointsForD+pointsForE+pointsForF+pointsForG+pointsForH+pointsForI+pointsForJ+pointsForK+pointsForL+pointsForM+pointsForN+pointsForO+pointsForP+pointsForQ+pointsForR+pointsForS+pointsForT+pointsForU+pointsForV+pointsForW+pointsForX+pointsForY+pointsForZ+pointsForÄ+pointsForÜ+pointsForÖ
}

extension String {
    func countInstances(of stringToFind: String) -> Int {
        var stringToSearch = self
        var count = 0
        while let foundRange = stringToSearch.range(of: stringToFind, options: .diacriticInsensitive) {
            stringToSearch = stringToSearch.replacingCharacters(in: foundRange, with: "")
            count += 1
        }
        return count
    }
}
