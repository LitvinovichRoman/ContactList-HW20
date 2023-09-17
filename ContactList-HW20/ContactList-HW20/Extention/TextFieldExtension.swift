//
//  TextFieldExtension.swift
//  ContactList-HW20
//
//  Created by Роман Литвинович on 15.09.23.
//

import Foundation
import UIKit

extension UITextField {
    @IBInspectable var placeholderColor: UIColor? {
        get {
            return self.attributedPlaceholder?.attribute(.foregroundColor, at: 0, effectiveRange: nil) as? UIColor
        }
        set {
            guard let placeholderText = self.placeholder else { return }
            let attributes: [NSAttributedString.Key: Any] = [.foregroundColor: newValue ?? UIColor.black]
            self.attributedPlaceholder = NSAttributedString(string: placeholderText, attributes: attributes)
        }
    }
}
