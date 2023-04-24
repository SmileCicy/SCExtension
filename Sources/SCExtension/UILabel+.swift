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
    
    @discardableResult
    func hContentCompression(_ value: Float) -> Base {
        self.base.setContentCompressionResistancePriority(UILayoutPriority(rawValue: value), for: .horizontal)
        return self.base
    }
    
    @discardableResult
    func vContentCompression(_ value: Float) -> Base {
        self.base.setContentCompressionResistancePriority(UILayoutPriority(rawValue: value), for: .vertical)
        return self.base
    }
    
    @discardableResult
    func hContentHugging(_ value: Float) -> Base {
        self.base.setContentHuggingPriority(UILayoutPriority(rawValue: value), for: .horizontal)
        return self.base
    }
    
    @discardableResult
    func vContentHugging(_ value: Float) -> Base {
        self.base.setContentHuggingPriority(UILayoutPriority(rawValue: value), for: .vertical)
        return self.base
    }
}
