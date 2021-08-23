//
//  ___VARIABLE_moduleName___ModulePlugin.swift
//  ___VARIABLE_moduleName___
//
//  Created by NGUYEN CHI CONG on 6/1/21.
//  
//

import Boardy
import Foundation
import ___VARIABLE_moduleName___IO

public struct ___VARIABLE_moduleName___ModulePlugin: ModulePlugin {
    public let identifier: BoardID
    // public let serviceType: ___VARIABLE_moduleName___ModulePlugin.ServiceType
    // public let identifierExtensions: ___VARIABLE_moduleName___ModulePlugin.IDExtensions

    public init(identifier: BoardID = ___VARIABLE_moduleName___Namespace.default) {
                // identifierExtensions: ___VARIABLE_moduleName___ModulePlugin.IDExtensions = .init()) {
        self.identifier = identifier
        // self.serviceType = serviceType
        // self.identifierExtensions = identifierExtensions
    }

    public func apply(for main: MainComponent) {
        let mainProducer = main.producer
        // let externalIDs = identifierExtensions
        
        mainProducer.registerBoard(identifier) { [unowned mainProducer] identifier in
            let mainboard = Motherboard(identifier: identifier.appending("main"), externalProducer: mainProducer) { producer in
                // <#BoardRegistration#>
            }
            return RootBoard(identifier: identifier, continuousBoard: mainboard)
        }
    }

    /// Use IDExtensions when you would like to match internal BoardID with external BoardID from external producer.
    /// This make Internal Producer to be able produce external-defined Board with internal identifier.
    // public struct IDExtensions {
    //     public init() {}
    // }

    // public var identifier: BoardID {
    //     switch serviceType {
    //     case let .some(identifier):
    //         return identifier
    //     }
    // }

    // public enum ServiceType {
    //     case some(BoardID)
    // }
}

extension ___VARIABLE_moduleName___ModulePlugin {
    public static var bundledPlugins: [ModulePlugin] {
        [___VARIABLE_moduleName___ModulePlugin()]
    }
}
