//
//  RootBoard.swift
//  ___VARIABLE_moduleName___
//
//  Created by BOARDY on 10/22/21.
//  
//

import Boardy
import Foundation

enum RootBoardFactory {
    static func make(identifier: BoardID, producer: ActivableBoardProducer) -> ActivatableBoard {
        FlowBoard<RootInput, RootOutput>(identifier: identifier, producer: producer) { it in
            <#register flows#>
        } flowActivation: { it, input in
            <#activate#>
        }
    }
}
