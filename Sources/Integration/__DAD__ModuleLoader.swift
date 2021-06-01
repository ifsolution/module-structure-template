//
//  __DAD__ModuleLoader.swift
//  Dad
//
//  Created by NGUYEN CHI CONG on 6/1/21.
//  
//

import Boardy
import DadFoundation
import Foundation

struct __DAD__ModuleLoader: ModuleLoader {
    let identifier: BoardID

    func load(in container: ModuleContainer) {
        container.registerBoard(identifier) { id in
            let producer = __DAD__BoardProducer()
            let mainboard = Motherboard(identifier: "<#domain.root.main#>", boardProducer: producer)
            return RootBoard(identifier: id, continuousBoard: mainboard)
        }
    }
}
