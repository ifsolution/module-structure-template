//
//  ___VARIABLE_moduleName___ModulePlugin.swift
//  ___VARIABLE_moduleName___
//
//  Created by BOARDY on 6/1/21.
//
//

import __DAD__IO
import Boardy
import Foundation

public struct ___VARIABLE_moduleName___ModulePlugin: ModulePlugin {
    public let service: ___VARIABLE_moduleName___ModulePlugin.ServiceType

    public init(service: ___VARIABLE_moduleName___ModulePlugin.ServiceType) {
        self.service = service
    }

    public func apply(for main: MainComponent) {
        let mainProducer = main.producer

        let continuousProducer = BoardProducer(externalProducer: mainProducer, registrationsBuilder: { producer in
            // BoardRegistration
        })

        switch service {
        case .default:
            mainProducer.registerBoard(identifier) { identifier in
                RootBoard(identifier: identifier, producer: continuousProducer)
            }
        }
    }

    public var identifier: BoardID {
        switch service {
        case let .default(identifier):
            return identifier
        }
    }

    /// Each service is equivalent to one entry point
    public enum ServiceType {
        case `default`(BoardID)
    }
}

extension ___VARIABLE_moduleName___ModulePlugin {
    public static var bundledPlugins: [ModulePlugin] {
        return [
            ___VARIABLE_moduleName___ModulePlugin(service: .default(___VARIABLE_moduleName___ID.default)),
        ]
    }
}
