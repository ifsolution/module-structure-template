//
//  ___VARIABLE_moduleName___ServiceMap.swift
//  ___VARIABLE_moduleName___
//
//  Created by Boardy on 6/1/21.
//  
//

import Boardy
import Foundation

/// List of provided services here
public extension ___VARIABLE_moduleName___ServiceMap {
    var `default`: ___VARIABLE_moduleName___MainDestination {
        mainboard.io___VARIABLE_moduleName___()
    }
}

public final class ___VARIABLE_moduleName___ServiceMap: ServiceMap {}

public extension ServiceMap {
    var ___VARIABLE_serviceMap___: ___VARIABLE_moduleName___ServiceMap { link() }
}
