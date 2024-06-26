//
//  ___VARIABLE_moduleName___ModulePlugin.swift
//  ___VARIABLE_moduleName___
//
//  Created by BOARDY on 6/1/21.
//  Compatible with Boardy 1.54 or later
//

import __DAD__IO
import Boardy
import Foundation

struct ___VARIABLE_moduleName___ModulePlugin: ModulePlugin {
    var identifier: Boardy.BoardID {
        service.identifier
    }

    let service: ___VARIABLE_moduleName___ModulePlugin.ServiceType

    init(service: ___VARIABLE_moduleName___ModulePlugin.ServiceType) {
        self.service = service
    }

    func apply(for main: MainComponent) {
        let mainProducer = main.producer

        let continuousProducer = BoardProducer(externalProducer: mainProducer, registrationsBuilder: { producer in
            // BoardRegistration
        })

        switch service {
        case .default:
            mainProducer.registerBoard(service.identifier) { identifier in
                ___VARIABLE_moduleName___BoardFactory.make(identifier: identifier, producer: continuousProducer)
            }
        }
    }

    /// Each service is equivalent to one entry point
    enum ServiceType {
        case `default`

        var identifier: BoardID {
            switch self {
                case .default:
                    return .pub___VARIABLE_moduleName___
            }
        }
    }
}

public struct ___VARIABLE_moduleName___LauncherPlugin: LauncherPlugin {
    public init() { /**/ }

    public func prepareForLaunching(withOptions options: MainOptions) -> ModuleComponent {
        ModuleComponent(
            modulePlugins: [
                ___VARIABLE_moduleName___ModulePlugin(service: .default),
            ],
            urlOpenerPlugins: []
        )
    }
}
