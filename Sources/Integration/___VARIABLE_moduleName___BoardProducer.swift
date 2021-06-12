//
//  ___VARIABLE_moduleName___BoardProducer.swift
//  ___VARIABLE_moduleName___
//
//  Created by NGUYEN CHI CONG on 6/1/21.
//  
//

import Boardy
import Foundation

struct ___VARIABLE_moduleName___BoardProducer: ActivableBoardProducer {
    let externalProducer: BoardDynamicProducer
    let externalIDs: ___VARIABLE_moduleName___IDExtensions

    func produceBoard(identifier: BoardID) -> ActivatableBoard? {
        switch identifier {
        default:
            return NoBoard(identifier: identifier)
        }
    }
}
