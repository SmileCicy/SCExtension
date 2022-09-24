//
//  UIButton+.swift
//  SCExtension
//
//  Created by Smile on 2022/9/24.
//

import Foundation
import UIKit

public extension NameSpaceWrapper where Base: UIButton {
    
    @discardableResult
    func text(_ text: String?, _ state: UIControl.State = .normal) -> Base {
        self.base.setTitle(text, for: state)
        return self.base
    }
    
    @discardableResult
    func attriText(_ text: NSAttributedString?, _ state: UIControl.State = .normal) -> Base {
        self.base.setAttributedTitle(text, for: state)
        return self.base
    }
    
    @discardableResult
    func image(_ image: String, _ state: UIControl.State = .normal) -> Base {
        self.base.setImage(UIImage(named: image), for: state)
        return self.base
    }
    
    @discardableResult
    func color(_ color: UIColor, _ state: UIControl.State = .normal) -> Base {
        self.base.setTitleColor(color, for: state)
        return self.base
    }
    
    @discardableResult
    func font(_ font: UIFont) -> Base {
        self.base.titleLabel?.font = font
        return self.base
    }
    
    @discardableResult
    func contentHAlignment(_ alignment: UIControl.ContentHorizontalAlignment) -> Base {
        self.base.contentHorizontalAlignment = alignment
        return self.base
    }
    
    @discardableResult
    func contentVAlignment(_ alignment: UIControl.ContentVerticalAlignment) -> Base {
        self.base.contentVerticalAlignment = alignment
        return self.base
    }
    
    @discardableResult
    func isUser(_ enabled: Bool) -> Base {
        self.base.isUserInteractionEnabled = enabled
        return self.base
    }
    
    @discardableResult
    func isSelected(_ selected: Bool) -> Base {
        self.base.isSelected = selected
        return self.base
    }
}
