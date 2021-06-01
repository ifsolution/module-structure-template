//
//  __DAD__IOInterface.swift
//  DadProduct
//
//  Created by NGUYEN CHI CONG on 6/1/21.
//  
//

import Boardy
import Foundation

public enum __DAD__Input {}

public enum __DAD__Output {}

public protocol __DAD__Activatable {
    func activate(with input: __DAD__Input)
}

// MARK: - Activations

/// For Motherboard call
struct __DAD__MainActivation {
    let identifier: BoardID
    let mainboard: MotherboardType
}

extension __DAD__MainActivation: __DAD__Activatable {
    func activate(with input: __DAD__Input) {
        mainboard.activateBoard(BoardInput(target: identifier, input: input))
    }
}

/// For other Board call
struct __DAD__Activation {
    let identifier: BoardID
    let source: ActivatableBoard
}

extension __DAD__Activation: __DAD__Activatable {
    func activate(with input: __DAD__Input) {
        source.nextToBoard(BoardInput(target: identifier, input: input))
    }
}

// MARK: - Quick Access

extension ActivatableBoard {
    public func <#__DAD__#>(identifier: BoardID) -> __DAD__Activatable {
        switch self {
        case let main as MotherboardType:
            return __DAD__MainActivation(identifier: identifier, mainboard: main)
        default:
            return __DAD__Activation(identifier: identifier, source: self)
        }
    }
}
