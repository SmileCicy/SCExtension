//
//  UITextView+.swift
//  SCExtension
//
//  Created by Smile on 2022/9/24.
//

import Foundation
import UIKit

public extension NameSpaceWrapper where Base: UITextView {
    
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
    func edited(_ valid: Bool) -> Base {
        self.base.isEditable = valid
        return self.base
    }
    
    @discardableResult
    func alignment(_ alignment: NSTextAlignment) -> Base {
        self.base.textAlignment = alignment
        return self.base
    }
    
    @discardableResult
    func textInset(_ top: CGFloat, _ left: CGFloat, _ bottom: CGFloat? = nil, _ right: CGFloat? = nil) -> Base {
        self.base.textContainerInset = UIEdgeInsets(top: top, left: left, bottom: bottom ?? top, right: right ?? left)
        return self.base
    }
}
