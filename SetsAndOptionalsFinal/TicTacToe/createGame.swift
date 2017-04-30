//
//  createGame.swift
//  TicTacToe
//
//  Created by Crystal Jade Allen-Washington on 4/9/17.
//  Copyright © 2017 Crystal Jade Allen-Washington. All rights reserved.
//

import Foundation

// Write a function 'createGame' which accepts two players and returns a 'Game' if and only if the symbols are not equal.


func createGame(playerOne: Player, playerTwo: Player, moves: Game.Moves) -> Game? {
    
    if playerOne.symbol == playerTwo.symbol {
        return nil
    } else {
        return Game(playerOne: playerOne, playerTwo: playerTwo, moves: moves)
    }
}
