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

extension Numeric {
    public func decimalFormatted(separator: String? = nil) -> String {
        let separator = separator ?? Locale.current.decimalSeparator ?? ","
        return NumberFormatter(decimalSeparator: separator).string(for: self) ?? "\(self)"
    }
}

extension NumberFormatter {
    public convenience init(decimalSeparator: String) {
        self.init()
        self.groupingSeparator = decimalSeparator
        self.numberStyle = .decimal
    }
}

extension Locale {
    public static var vietnam: Locale {
        return Locale(identifier: "vn_VN")
    }
}

func feedbackHaptic() {
    let haptic = UISelectionFeedbackGenerator()
    haptic.prepare()
    haptic.selectionChanged()
}

func notificationHaptic(_ type: UINotificationFeedbackGenerator.FeedbackType) {
    let haptic = UINotificationFeedbackGenerator()
    haptic.prepare()
    haptic.notificationOccurred(type)
}

extension NSError {
    static func general(domain: String = "mod.general",
                        code: Int = NSURLErrorUnknown,
                        message: String) -> NSError {
        NSError(domain: domain, code: code, userInfo: [NSLocalizedDescriptionKey: message])
    }
}
