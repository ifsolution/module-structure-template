//
//  RootBoard.swift
//  Modular
//
//  Created by NGUYEN CHI CONG on 5/31/21.
//

import Boardy
import Foundation
import __DAD__IO

final class RootBoard: ModernContinuableBoard, GuaranteedBoard, GuaranteedOutputSendingBoard {
    typealias InputType = ___VARIABLE_moduleName___Input
    typealias OutputType = ___VARIABLE_moduleName___Output

    init(identifier: BoardID, producer: ActivableBoardProducer) {
        super.init(identifier: identifier, boardProducer: producer)
        registerFlows()
    }

    func activate(withGuaranteedInput input: InputType) {
        // <#code#>
    }
}

private extension RootBoard {
    func registerFlows() {
        // <#code#>
    }
}
