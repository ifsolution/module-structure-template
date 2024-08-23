//
//  ___VARIABLE_moduleName___IOInterface.swift
//  ___VARIABLE_moduleName___
//
//  Created by Boardy on 6/1/21.
//  Compatible with Boardy 1.55.1 or later
//

import Boardy
import Foundation

// MARK: - ID

public extension BoardID {
    static let pub___VARIABLE_moduleName___: BoardID = "pub.mod.___VARIABLE_moduleName___.default"
}

// MARK: - Interface

public typealias ___VARIABLE_moduleName___MainDestination = MainboardGenericDestination<___VARIABLE_moduleName___Input, ___VARIABLE_moduleName___Output, ___VARIABLE_moduleName___Command, ___VARIABLE_moduleName___Action>

extension MotherboardType where Self: FlowManageable {
    func io___VARIABLE_moduleName___(_ identifier: BoardID = .pub___VARIABLE_moduleName___) -> ___VARIABLE_moduleName___MainDestination {
        ___VARIABLE_moduleName___MainDestination(destinationID: identifier, mainboard: self)
    }
}

// public typealias ___VARIABLE_moduleName___Destination = BoardGenericDestination<___VARIABLE_moduleName___Input, ___VARIABLE_moduleName___Command>
//
// extension ActivatableBoard {
//    func io___VARIABLE_moduleName___(_ identifier: BoardID = .pub___VARIABLE_moduleName___) -> ___VARIABLE_moduleName___Destination {
//        ___VARIABLE_moduleName___Destination(destinationID: identifier, source: self)
//    }
// }
