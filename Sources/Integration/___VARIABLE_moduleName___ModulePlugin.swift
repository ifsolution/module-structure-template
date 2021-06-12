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

public struct ___VARIABLE_moduleName___IDExtensions {
    public init() {}
}

public struct ___VARIABLE_moduleName___ModulePlugin: ModulePlugin {
    public let identifier: BoardID
    public let identifierExtensions: ___VARIABLE_moduleName___IDExtensions

    public init(identifier: BoardID, identifierExtensions: ___VARIABLE_moduleName___IDExtensions = ___VARIABLE_moduleName___IDExtensions()) {
        self.identifier = identifier
        self.identifierExtensions = identifierExtensions
    }

    public func apply(for main: MainComponent) {
        let mainProducer = main.producer
        mainProducer.registerBoard(identifier) { identifier in
            let producer = ___VARIABLE_moduleName___BoardProducer(externalProducer: mainProducer, externalIDs: identifierExtensions)
            let mainboard = Motherboard(identifier: "___VARIABLE_moduleName___.root.main", boardProducer: producer)
            return RootBoard(identifier: identifier, continuousBoard: mainboard)
        }
    }
}
