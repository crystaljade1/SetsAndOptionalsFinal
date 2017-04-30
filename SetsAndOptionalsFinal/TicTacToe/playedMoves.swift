//
//  playedMoves.swift
//  TicTacToe
//
//  Created by Crystal Jade Allen-Washington on 4/9/17.
//  Copyright © 2017 Crystal Jade Allen-Washington. All rights reserved.
//

import Foundation

// Write a function that builds a list of all played moves.

typealias PlayedLocation = [Int]
typealias Location = [Int]
var location: Location = [0, 1, 2, 3, 4, 5, 6, 7, 8]


func collectPlayedLocations(gameMoves: Game.Moves) -> PlayedLocation {
    
    var playedLocation = PlayedLocation()
    
    var counter = 0
    
    for move in gameMoves.moves {
        playedLocation.append(move)
        counter += 1
    }
    
    return playedLocation
}


func isAnEmptySpot(move: Int, playedLocation: PlayedLocation) -> Bool {
    
    if playedLocation.contains(move) {
                return false
            } else {
                return true
            }
}

let character = Character("")


// Write a function symbol(at location: Location, in game: Game) that returns the symbol at a provided spot or nothing, if no one has played in the provided location.


func symbol(at location: Location, in game: Game) -> Game.Symbol?{
    typealias Symbol = Game.Symbol
    let symbol: Symbol = .x
    let playedLocation = PlayedLocation()
    
    let isEmpty = isAnEmptySpot(move: 0, playedLocation: playedLocation)
    
    if isEmpty == true {
        return nil
    }
    
    return symbol
}

