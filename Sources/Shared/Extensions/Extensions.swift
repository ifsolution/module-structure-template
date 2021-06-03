//
//  Extensions.swift
//  Modular
//
//  Created by NGUYEN CHI CONG on 5/31/21.
//

import Foundation
import UIKit

private class BundleToken {}

extension Bundle {
    static var current: Bundle { Bundle(for: BundleToken.self) }
}

extension UIImage {
    convenience init?(xcnamed: String) {
        self.init(named: xcnamed, in: .current, compatibleWith: nil)
    }

    static func from(xcnamed: String) -> UIImage? {
        UIImage(xcnamed: xcnamed)
    }
}
