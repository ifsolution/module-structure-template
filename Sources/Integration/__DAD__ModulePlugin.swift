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

public struct __DAD__ModulePlugin: ModulePlugin {
    public let identifier: BoardID

    public init(identifier: BoardID) {
        self.identifier = identifier
    }

    public func apply(for main: MainComponent) {
        main.registerBoard(identifier) { id in
            let producer = __DAD__BoardProducer()
            let mainboard = Motherboard(identifier: "<#domain.root.main#>", boardProducer: producer)
            return RootBoard(identifier: id, continuousBoard: mainboard)
        }
    }
}
