//
//  ___VARIABLE_moduleName___IOInterface.swift
//  ___VARIABLE_moduleName___
//
//  Created by NGUYEN CHI CONG on 6/1/21.
//  
//

import Boardy
import Foundation

// MARK: - Namespace

public enum ___VARIABLE_moduleName___Namespace {
    public static let `default`: BoardID = "pub.mod.___VARIABLE_moduleName___"
}

// MARK: - Interface

public struct ___VARIABLE_moduleName___Destination {
    public let activation: BoardActivation<___VARIABLE_moduleName___Parameter>
    public let interaction: BoardInteraction<___VARIABLE_moduleName___Command>
}

extension ActivatableBoard {
    public func io___VARIABLE_moduleName___(_ identifier: BoardID = ___VARIABLE_moduleName___Namespace.default) -> ___VARIABLE_moduleName___Destination {
        ___VARIABLE_moduleName___Destination(
            activation: activation(identifier, with: ___VARIABLE_moduleName___Parameter.self),
            interaction: interaction(identifier, with: ___VARIABLE_moduleName___Command.self)
        )
    }
}

public struct ___VARIABLE_moduleName___MainDestination {
    public let activation: MainboardActivation<___VARIABLE_moduleName___Parameter>
    public let interaction: MainboardInteraction<___VARIABLE_moduleName___Command>
    public let flow: FlowHandler<___VARIABLE_moduleName___Output>
}

extension MotherboardType where Self: FlowManageable {
    public func io___VARIABLE_moduleName___(_ identifier: BoardID = ___VARIABLE_moduleName___Namespace.default) -> ___VARIABLE_moduleName___MainDestination {
        ___VARIABLE_moduleName___MainDestination(
            activation: activation(identifier, with: ___VARIABLE_moduleName___Parameter.self),
            interaction: interaction(identifier, with: ___VARIABLE_moduleName___Command.self),
            flow: matchedFlow(identifier, with: ___VARIABLE_moduleName___Output.self)
        )
    }
}
