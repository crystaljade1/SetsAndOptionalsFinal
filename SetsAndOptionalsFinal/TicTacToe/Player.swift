//
//  Player.swift
//  TicTacToe
//
//  Created by Crystal Jade Allen-Washington on 4/30/17.
//  Copyright © 2017 Crystal Jade Allen-Washington. All rights reserved.
//

import Foundation

typealias Player = Game.Player
typealias Symbol = Game.Symbol
typealias Moves = Game.Moves

// write a function, 'createPlayer', which accepts a name and symbol, returns a 'Player' with the provided values if the provided name is non-empty and returns nothing if the name was empty.

func createPlayer(name: String, symbol: Symbol) -> Player? {
    if name.isEmpty {
        return nil
    } else {
        return Player(name: name, symbol: symbol)
    }
}

// Write a function 'createGame' which accepts two players and returns a 'Game' if and only if the symbols are not equal.

func createGame(playerOne: Player, playerTwo: Player, moves: Game.Moves) -> Game? {
    
    if playerOne.symbol == playerTwo.symbol {
        return nil
    } else {
        return Game(playerOne: playerOne, playerTwo: playerTwo, moves: moves)
    }
}

// Write a function play which accepts a Player, a Location, and a Game and returns a new Game with the move for the provided player at the provided location added to the moves property of the `Game.

func play(player: Player, location: Int, game: Game) -> Game? {
    
    var playedLocation = PlayedLocation()
    let playerOne = Player(name: "Crystal", symbol: .x)
    let playerTwo = Player(name: "Stephen", symbol: .o)

    let moves = Moves(symbol: .x, moves: [2, 4, 1])
    
    let newGame = Game(playerOne: playerOne, playerTwo: playerTwo, moves: moves)
    
    for element in playedLocation {
        if element == location {
            return nil
        } else {
            playedLocation.append(location)
        }
    }
    
    return newGame
}


