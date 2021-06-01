//
//  __DAD__BoardProducer.swift
//  Dad
//
//  Created by NGUYEN CHI CONG on 6/1/21.
//  
//

import Boardy
import Foundation

struct __DAD__BoardProducer: ActivableBoardProducer {
    func produceBoard(identifier: BoardID) -> ActivatableBoard? {
        switch identifier {
        default:
            return NoBoard(identifier: identifier)
        }
    }
}
