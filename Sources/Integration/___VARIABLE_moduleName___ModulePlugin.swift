//
//  ___VARIABLE_moduleName___ModulePlugin.swift
//  ___VARIABLE_moduleName___
//
//  Created by NGUYEN CHI CONG on 6/1/21.
//  
//


import Boardy
import DadFoundation
import Foundation

public struct ___VARIABLE_moduleName___ModulePlugin: ModulePlugin {
    public struct IDExtensions {
        public init() {}
    }

    public let identifier: BoardID
    public let identifierExtensions: ___VARIABLE_moduleName___ModulePlugin.IDExtensions

    public init(identifier: BoardID, identifierExtensions: ___VARIABLE_moduleName___ModulePlugin.IDExtensions = .init()) {
        self.identifier = identifier
        self.identifierExtensions = identifierExtensions
    }

    public func apply(for main: MainComponent) {
        let mainProducer = main.producer
        let externalIDs = identifierExtensions
        
        mainProducer.registerBoard(identifier) { [unowned mainProducer] identifier in
            let mainboard = Motherboard(identifier: "___VARIABLE_moduleName___.root.main", externalProducer: mainProducer) { producer in
                // <#BoardRegistration#>
            }
            return RootBoard(identifier: identifier, continuousBoard: mainboard)
        }
    }
}
