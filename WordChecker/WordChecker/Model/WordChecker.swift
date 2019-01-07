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
    let pointsForB = word.countInstances(of: "B")*3
    let pointsForC = word.countInstances(of: "C")*4
    let pointsForD = word.countInstances(of: "D")*1
    let pointsForE = word.countInstances(of: "E")*1
    let pointsForF = word.countInstances(of: "F")*4
    let pointsForG = word.countInstances(of: "G")*2
    let pointsForH = word.countInstances(of: "H")*2
    let pointsForI = word.countInstances(of: "I")*1
    let pointsForJ = word.countInstances(of: "J")*6
    let pointsForK = word.countInstances(of: "K")*4
    let pointsForL = word.countInstances(of: "L")*2
    let pointsForM = word.countInstances(of: "M")*3
    let pointsForN = word.countInstances(of: "N")*1
    let pointsForO = word.countInstances(of: "O")*2
    let pointsForP = word.countInstances(of: "P")*4
    let pointsForQ = word.countInstances(of: "Q")*10
    let pointsForR = word.countInstances(of: "R")*1
    let pointsForS = word.countInstances(of: "S")*1
    let pointsForT = word.countInstances(of: "T")*1
    let pointsForU = word.countInstances(of: "U")*1
    let pointsForV = word.countInstances(of: "V")*6
    let pointsForW = word.countInstances(of: "W")*3
    let pointsForX = word.countInstances(of: "X")*8
    let pointsForY = word.countInstances(of: "Y")*10
    let pointsForZ = word.countInstances(of: "Z")*3
    
    let pointsForÄ = word.countInstances(of: "Ä")*6
    let pointsForÜ = word.countInstances(of: "Ü")*6
    let pointsForÖ = word.countInstances(of: "Ö")*8

    

    return pointsForA+pointsForB+pointsForC+pointsForD+pointsForE+pointsForF+pointsForG+pointsForH+pointsForI+pointsForJ+pointsForK+pointsForL+pointsForM+pointsForN+pointsForO+pointsForP+pointsForQ+pointsForR+pointsForS+pointsForT+pointsForU+pointsForV+pointsForW+pointsForX+pointsForY+pointsForZ+pointsForÄ+pointsForÜ+pointsForÖ
}

extension String {
    func countInstances(of stringToFind: String) -> Int {
        var stringToSearch = self
        var count = 0
        while let foundRange = stringToSearch.range(of: stringToFind) {
            stringToSearch = stringToSearch.replacingCharacters(in: foundRange, with: "")
            count += 1
        }

        return count
    }
}
