//
//  File.swift
//  TicTacToe
//
//  Created by Crystal Jade Allen-Washington on 4/7/17.
//  Copyright © 2017 Crystal Jade Allen-Washington. All rights reserved.
//


// write a type 'Game' which holds two players with differing symbols.

class Game {
    var playerOne: Player
    var playerTwo: Player
    var moves: Moves
    
    
    init(playerOne: Player, playerTwo: Player, moves: Moves) {
        self.playerOne = playerOne
        self.playerTwo = playerTwo
        self.moves = moves
    }
    
    public enum Symbol {
        case x
        case o
    }
    
    // write a type 'Player', with two properties, 'name' and 'symbol.' there are two valid symbols: x and o.


    public struct Player : Equatable {
        let name: String
        let symbol: Symbol
        
        public static func == (lhs: Player, rhs: Player) -> Bool {
            return lhs.name == rhs.name && lhs.symbol == rhs.symbol
            
        }
    }
    
       
    // Add a property 'moves' to the type 'Game'. A move should consist of a player and a location within a 3x3 grid.
    
    let spots = [0, 1, 2, 3, 4, 5, 6, 7, 8]

    typealias Moves = (symbol: Symbol, moves: [Int])
    
    typealias Location = (symbol: Symbol, spot: Int)
    
        
}
























