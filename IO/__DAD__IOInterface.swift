//
//  __DAD__IOInterface.swift
//  DadProduct
//
//  Created by NGUYEN CHI CONG on 6/1/21.
//  
//

import Boardy
import Foundation

public enum __DAD__Input {
    case none
}

public enum __DAD__Output {}

// MARK: - Activations

public protocol __DAD__Activatable {
    func activate(with input: __DAD__Input)
}

extension __DAD__Activatable {
    public func activate() {
        activate(with: .none)
    }
}

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

// MARK: - Handler

public protocol __DAD__OutputHandling {
    func addTarget<Target: AnyObject>(_ target: Target, action: @escaping (Target, __DAD__Output) -> Void)
}

struct __DAD__OutputHandler {
    let identifier: BoardID
    let mainboard: FlowManageable
}

extension __DAD__OutputHandler: __DAD__OutputHandling {
    func addTarget<Target: AnyObject>(_ target: Target, action: @escaping (Target, __DAD__Output) -> Void) {
        mainboard.registerFlow(matchedIdentifiers: identifier, target: target, uniqueOutputType: __DAD__Output.self, nextHandler: action)
    }
}

// MARK: - Quick Access

extension ActivatableBoard {
    public func __dad__(identifier: BoardID) -> __DAD__Activatable {
        switch self {
        case let main as MotherboardType:
            return __DAD__MainActivation(identifier: identifier, mainboard: main)
        default:
            return __DAD__Activation(identifier: identifier, source: self)
        }
    }
}

extension FlowManageable {
    public func __dad__Handler(identifier: BoardID) -> __DAD__OutputHandling {
        return __DAD__OutputHandler(identifier: identifier, mainboard: self)
    }
}
