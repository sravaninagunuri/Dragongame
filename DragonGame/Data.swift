//
//  Data.swift
//  DragonGame
//
//  Created by Sravani Nagunuri on 9/15/23.
//

import Foundation

struct Data {
    var player1Images = ["dragon11.jpeg", "dragon12.jpeg", "dragon13.jpeg"]
    var player2Images = ["dragon21.jpeg", "dragon22.jpeg", "dragon23.jpeg"]
    var message: String!
}

extension Data {
    func getPlayer1Images() -> [String] {
        return player1Images
    }
    
    func getPlayer2Images() -> [String] {
        return player2Images
    }
    
    func savePlayerResults(result: String) {
        message = result
    }
}
