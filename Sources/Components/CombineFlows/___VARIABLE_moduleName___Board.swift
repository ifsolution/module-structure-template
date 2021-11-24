//
//  RootBoard.swift
//  ___VARIABLE_moduleName___
//
//  Created by BOARDY on 10/22/21.
//  
//

import Boardy
import Foundation
import __DAD__IO

enum ___VARIABLE_moduleName___BoardFactory {
    static func make(identifier: BoardID, producer: ActivableBoardProducer) -> ActivatableBoard {
        FlowBoard<___VARIABLE_moduleName___Input, ___VARIABLE_moduleName___Output, ___VARIABLE_moduleName___Command, ___VARIABLE_moduleName___Action>(identifier: identifier, producer: producer) { it in
            <#register flows#>
        } flowActivation: { it, input in
            <#activate#>
        }
    }
}
