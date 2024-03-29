//
//  UILabel+.swift
//  SCExtension
//
//  Created by Smile on 2022/9/24.
//

import Foundation
import UIKit

public extension NameSpaceWrapper where Base: UILabel {
    
    @discardableResult
    func text(_ text: String?) -> Base {
        self.base.text = text
        return self.base
    }
    
    @discardableResult
    func attr(_ attr: NSAttributedString?) -> Base {
        self.base.attributedText = attr
        return self.base
    }
    
    @discardableResult
    func lineBreak(_ mode: NSLineBreakMode) -> Base {
        self.base.lineBreakMode = mode
        return self.base
    }
    
    @discardableResult
    func font(_ font: UIFont) -> Base {
        self.base.font = font
        return self.base
    }
    
    @discardableResult
    func color(_ color: UIColor) -> Base {
        self.base.textColor = color
        return self.base
    }
    
    @discardableResult
    func color(_ colorHex: String) -> Base {
        self.base.textColor = colorHex.sc.color()
        return self.base
    }

    @discardableResult
    func number(_ number: Int) -> Base {
        self.base.numberOfLines = number
        return self.base
    }
    
    @discardableResult
    func adjustWidth(_ adjust: Bool = true) -> Base {
        self.base.adjustsFontSizeToFitWidth = adjust
        return self.base
    }
    
    @discardableResult
    func alignment(_ alignment: NSTextAlignment) -> Base {
        self.base.textAlignment = alignment
        return self.base
    }
}
