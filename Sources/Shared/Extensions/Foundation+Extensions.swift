//
//  Extensions.swift
//  Modular
//
//  Created by NGUYEN CHI CONG on 5/31/21.
//

import Foundation

private class BundleToken {}

extension Bundle {
    static var local: Bundle { Bundle(for: BundleToken.self) }
}

extension UIImage {
    convenience init?(xcnamed: String) {
        self.init(named: xcnamed, in: .local, compatibleWith: nil)
    }

    static func from(xcnamed: String) -> UIImage? {
        UIImage(xcnamed: xcnamed)
    }
}

extension NSError {
    static func general(domain: String = "general.custom-error",
                        code: Int = NSURLErrorUnknown,
                        message: String) -> NSError {
        NSError(domain: domain, code: code, userInfo: [NSLocalizedDescriptionKey: message])
    }
}
