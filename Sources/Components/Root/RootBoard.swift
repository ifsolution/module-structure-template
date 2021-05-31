//
//  RootBoard.swift
//  Modular
//
//  Created by NGUYEN CHI CONG on 5/31/21.
//

import Boardy
import Foundation

final class RootBoard: ContinuousBoard, GuaranteedBoard {
    typealias InputType = Any

    init(identifier: BoardID, continuousBoard: FlowMotherboard) {
        super.init(identifier: identifier, motherboard: continuousBoard)
        registerFlows()
    }

    func activate(withGuaranteedInput input: InputType) {}
}

private extension RootBoard {
    func registerFlows() {}
}
