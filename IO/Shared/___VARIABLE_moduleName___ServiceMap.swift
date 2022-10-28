//
//  ___VARIABLE_moduleName___ServiceMap.swift
//  ___VARIABLE_moduleName___
//
//  Created by Boardy on 6/1/21.
//  
//

import Boardy
import Foundation

public struct ___VARIABLE_moduleName___ServiceMap {
    let base: FlowMotherboard

    public var `default`: DefaultMap {
        DefaultMap(base: base)
    }

    public struct DefaultMap {
        let base: FlowMotherboard

        /// List of provided services here
    }
}

// MARK: - Extensions

public extension MotherboardType where Self: FlowManageable {
    var ___VARIABLE_serviceMap___: ___VARIABLE_moduleName___ServiceMap {
        ___VARIABLE_moduleName___ServiceMap(base: self)
    }
}
