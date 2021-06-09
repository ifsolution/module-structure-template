//
//  ___VARIABLE_moduleName___IOInterface.swift
//  ___VARIABLE_moduleName___
//
//  Created by NGUYEN CHI CONG on 6/1/21.
//  
//

import Boardy
import Foundation

public enum ___VARIABLE_moduleName___Input {
    case none
}

public enum ___VARIABLE_moduleName___Output {}

// MARK: - Quick Access

extension ActivatableBoard {
    public func <#mod name var#>(_ identifier: BoardID) -> BoardActivation<___VARIABLE_moduleName___Input> {
        activation(identifier, with: ___VARIABLE_moduleName___Input.self)
    }
}

extension MotherboardType {
    public func <#mod name var#>(_ identifier: BoardID) -> BoardActivation<___VARIABLE_moduleName___Input> {
        activation(identifier, with: ___VARIABLE_moduleName___Input.self)
    }
}

extension FlowManageable {
    public func <#mod name var#>Flow(_ identifier: BoardID) -> FlowHandler<___VARIABLE_moduleName___Output> {
        matchedFlow(identifier, with: ___VARIABLE_moduleName___Output.self)
    }
}
