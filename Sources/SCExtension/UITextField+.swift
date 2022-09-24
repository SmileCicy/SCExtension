//
//  UITextField+.swift
//  SCExtension
//
//  Created by Smile on 2022/9/24.
//

import Foundation
import UIKit

public extension NameSpaceWrapper where Base: UITextField {
    
    @discardableResult
    func text(_ text: String?) -> Base {
        self.base.text = text
        return self.base
    }
    
    @discardableResult
    func color(_ color: UIColor) -> Base {
        self.base.textColor = color
        return self.base
    }
    
    @discardableResult
    func font(_ font: UIFont) -> Base {
        self.base.font = font
        return self.base
    }
    
    @discardableResult
    func placeHolder(_ text: String,_ color: UIColor,_ font: UIFont) -> Base {
        self.base.attributedPlaceholder = NSAttributedString(string: text, attributes: [
            .font: font,
            .foregroundColor: color
        ])
        return self.base
    }
    
    @discardableResult
    func returnKey(_ type: UIReturnKeyType) -> Base {
        self.base.returnKeyType = type
        return self.base
    }
    
    @discardableResult
    func secureText(_ valid: Bool = true) -> Base {
        self.base.isSecureTextEntry = valid
        return self.base
    }
    
    @discardableResult
    func keybordType(_ type: UIKeyboardType) -> Base {
        self.base.keyboardType = type
        return self.base
    }
    
    @discardableResult
    func userInteraction(_ enable: Bool) -> Base {
        self.base.isUserInteractionEnabled = enable
        return self.base
    }
}
