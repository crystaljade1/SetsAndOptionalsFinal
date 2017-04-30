//
//  TicTacToeTests.swift
//  TicTacToeTests
//
//  Created by Crystal Jade Allen-Washington on 4/7/17.
//  Copyright © 2017 Crystal Jade Allen-Washington. All rights reserved.
//

import XCTest
@testable import TicTacToe

class TicTacToeTests: XCTestCase {
    func testCreatePlayerWithName() {
        let result = createPlayer(name: "Crystal", symbol: .x)
        let expected = Player(name: "Crystal", symbol: .x)
        XCTAssertEqual(result, expected)
    }
    
    func testCreatePlayerWithoutName() {
        let result = createPlayer(name: "", symbol: .x)
        let expected: Player? = nil
        XCTAssertEqual(result, expected)
    }
    
//    func testCreateGameSuccessfully() {
//        let playerOne = Player(name: "Crystal", symbol: .x)
//        let playerTwo = Player(name: "Stephen", symbol: .o)
//        var moves = Moves(symbol: .x, moves: [1, 2, 3, 4, 5, 6, 7, 8, 9])
//        let result = createGame(playerOne: playerOne, playerTwo: playerTwo, moves: moves)
//        let expected = Game?(playerOne: playerOne, playerTwo: playerTwo, moves: moves)
//        XCTAssertEqual(result, expected)
//    }
    
    func testCreateGameWithSameSymbols() {
        let playerOne = Player(name: "Noah", symbol: .x)
        let playerTwo = Player(name: "Zuri", symbol: .x)
        let moves = Moves(symbol: .x, moves: [])
        let result = createGame(playerOne: playerOne, playerTwo: playerTwo, moves: moves)
        let _: Game? = nil
        XCTAssertNil(result)
        
    }
    
    func testCollectPlayedLocations() {
        let result = collectPlayedLocations(gameMoves: (symbol: .x, moves: [2, 3, 4]))
        let expected = PlayedLocation([2, 3, 4])
        XCTAssertEqual(result, expected)
    }
    
    func testIsAnEmptySpotAsTrue() {
        let result = isAnEmptySpot(move: 5, playedLocation: [3, 4, 6])
        let expected = true
        XCTAssertEqual(result, expected)
    }
    
    func testIsEmptySpotAsFalse() {
        let result = isAnEmptySpot(move: 4, playedLocation: [3, 4, 6])
        let expected = false
        XCTAssertEqual(result, expected)
    }
    
    func testSymbol() {
        let playerOne = Player(name: "Barbie", symbol: .o)
        let playerTwo = Player(name: "Ken", symbol: .x)
        let moves = Moves(symbol: .o, moves: [3, 4, 2])
        let result = symbol(at: [3], in: Game(playerOne: playerOne, playerTwo: playerTwo, moves: moves))
        let expected = symbol(at: [3], in: Game(playerOne: playerOne, playerTwo: playerTwo, moves: moves))
        XCTAssert(result == expected)
    }
    
}
