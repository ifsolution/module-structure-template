//
//  __DAD__ModulePlugin.swift
//  Dad
//
//  Created by NGUYEN CHI CONG on 6/1/21.
//  
//

import Boardy
import DadFoundation
import Foundation

public struct __DAD__IDExtensions {
    public init() {}
}

public struct __DAD__ModulePlugin: ModulePlugin {
    public let identifier: BoardID
    public let identifierExtensions: __DAD__IDExtensions

    public init(identifier: BoardID, identifierExtensions: __DAD__IDExtensions = __DAD__IDExtensions()) {
        self.identifier = identifier
        self.identifierExtensions = identifierExtensions
    }

    public func apply(for main: MainComponent) {
        let mainProducer = main.producer
        mainProducer.registerBoard(identifier) { identifier in
            let producer = __DAD__BoardProducer(externalProducer: mainProducer, identifierExtensions: identifierExtensions)
            let mainboard = Motherboard(identifier: "<#domain.root.main#>", boardProducer: producer)
            return RootBoard(identifier: identifier, continuousBoard: mainboard)
        }
    }
}
