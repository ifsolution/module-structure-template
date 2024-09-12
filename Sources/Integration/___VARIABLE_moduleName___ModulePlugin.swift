//
//  ___VARIABLE_moduleName___ModulePlugin.swift
//  ___VARIABLE_moduleName___
//
//  Created by BOARDY on 6/1/21.
//  Compatible with Boardy 1.56 or later
//

import __DAD__
import Boardy
import Foundation

struct ___VARIABLE_moduleName___ModulePlugin: ModuleBuilderPlugin {
    /// Each service is equivalent to one entry point
    enum ServiceType: CaseIterable {
        case `default`

        var identifier: BoardID {
            switch self {
                case .default:
                    return .pub___VARIABLE_moduleName___
            }
        }
    }

    func build(with identifier: Boardy.BoardID, sharedComponent: any Boardy.SharedValueComponent, internalContinuousProducer: any Boardy.ActivatableBoardProducer) -> any Boardy.ActivatableBoard {
        ___VARIABLE_moduleName___BoardFactory.make(identifier: identifier, producer: internalContinuousProducer)
    }

    func internalContinuousRegistrations(producer: any Boardy.ActivatableBoardProducer) -> [Boardy.BoardRegistration] {}

    let service: ___VARIABLE_moduleName___ModulePlugin.ServiceType

    var identifier: Boardy.BoardID {
        service.identifier
    }
}

struct ___VARIABLE_moduleName___URLOpenerPlugin: GuaranteedURLOpenerPlugin {
    typealias Parameter = Void
    
    func willOpen(url: URL) -> URLOpeningOption<Parameter> {
        // return .yes if need to process a deep link
        return .no
    }
    
    func mainboard(_ mainboard: any FlowMotherboard, openWith parameter: Parameter) {
        // Activate corresponding board here
    }
}

public struct ___VARIABLE_moduleName___LauncherPlugin: LauncherPlugin {
    public init() { /**/ }

    public func prepareForLaunching(withOptions options: MainOptions) -> ModuleComponent {
        ModuleComponent(
            modulePlugins: ___VARIABLE_moduleName___ModulePlugin.ServiceType.allCases.map {
                ___VARIABLE_moduleName___ModulePlugin(service: $0)
            },
            urlOpenerPlugins: [
                ___VARIABLE_moduleName___URLOpenerPlugin()
            ]
        )
    }
}
