//
//  createPlayer.swift
//  TicTacToe
//
//  Created by Crystal Jade Allen-Washington on 4/9/17.
//  Copyright © 2017 Crystal Jade Allen-Washington. All rights reserved.
//

import Foundation

// write a function, 'createPlayer', which accepts a name and symbol, returns a 'Player' with the provided values if the provided name is non-empty and returns nothing if the name was empty.

func createPlayer(name: String, symbol: Symbol) -> Player? {
    if name.isEmpty {
        return nil
    } else {
        return Player(name: name, symbol: symbol)
    }
}


