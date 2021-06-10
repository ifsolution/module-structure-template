//
//  ___VARIABLE_moduleName___IOInterface.swift
//  ___VARIABLE_moduleName___
//
//  Created by NGUYEN CHI CONG on 6/1/21.
//  
//

import Boardy
import Foundation

public typealias ___VARIABLE_moduleName___Input = Any?

public enum ___VARIABLE_moduleName___Output {}

public enum ___VARIABLE_moduleName___Command {}

// MARK: - Quick Access

public struct ___VARIABLE_moduleName___Destination {
    public let activation: BoardActivation<___VARIABLE_moduleName___Input>
    public let interaction: BoardInteraction<___VARIABLE_moduleName___Command>
}

extension ActivatableBoard {
    public func io___VARIABLE_moduleName___(_ identifier: BoardID) -> ___VARIABLE_moduleName___Destination {
        ___VARIABLE_moduleName___Destination(
            activation: activation(identifier, with: ___VARIABLE_moduleName___Input.self),
            interaction: interaction(identifier, with: ___VARIABLE_moduleName___Command.self)
        )
    }
}

extension MotherboardType {
    public func io___VARIABLE_moduleName___(_ identifier: BoardID) -> ___VARIABLE_moduleName___Destination {
        ___VARIABLE_moduleName___Destination(
            activation: activation(identifier, with: ___VARIABLE_moduleName___Input.self),
            interaction: interaction(identifier, with: ___VARIABLE_moduleName___Command.self)
        )
    }
}

extension FlowManageable {
    public func io___VARIABLE_moduleName___Flow(_ identifier: BoardID) -> FlowHandler<___VARIABLE_moduleName___Output> {
        matchedFlow(identifier, with: ___VARIABLE_moduleName___Output.self)
    }
}
