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
        let module = __DAD__ModuleLoader(identifier: identifier)
        module.load(in: main)
    }
}
