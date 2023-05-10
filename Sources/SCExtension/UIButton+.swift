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
    func image(_ image: UIImage?, _ state: UIControl.State = .normal) -> Base {
        self.base.setImage(image, for: state)
        return self.base
    }
    
    @discardableResult
    func imageName(_ image: String, _ state: UIControl.State = .normal) -> Base {
        self.base.setImage(UIImage(named: image), for: state)
        return self.base
    }
    
    @discardableResult
    func bgImageName(_ imageName: String, state: UIControl.State = .normal) -> Base {
        self.base.setBackgroundImage(UIImage(named: imageName), for: state)
        return self.base
    }
    
    @discardableResult
    func color(_ color: UIColor, _ state: UIControl.State = .normal) -> Base {
        self.base.setTitleColor(color, for: state)
        return self.base
    }
    
    @discardableResult
    func color(_ colorHex: String, _ state: UIControl.State = .normal) -> Base {
        self.base.setTitleColor(colorHex.sc.color(), for: state)
        return self.base
    }
    
    @discardableResult
    func font(_ font: UIFont) -> Base {
        self.base.titleLabel?.font = font
        return self.base
    }
    
    @discardableResult
    func adjustFont(_ adjust: Bool = true) -> Base {
        self.base.titleLabel?.adjustsFontSizeToFitWidth = adjust
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
    
    @discardableResult
    func imagePadding(_ value: CGFloat) -> Base {
        self.base.titleEdgeInsets = UIEdgeInsets(top: 0, left: value, bottom: 0, right: 0)
        self.base.imageEdgeInsets = UIEdgeInsets(top: 0, left: -value, bottom: 0, right: 0)
        return self.base
    }
    
    @discardableResult
    func add(_ target: Any?, action: Selector, event: UIControl.Event = .touchUpInside) -> Base {
        self.base.addTarget(target, action: action, for: event)
        return self.base
    }
    
    @discardableResult
    func switchImageAndText() -> Base {
        self.base.semanticContentAttribute = .forceRightToLeft
        return self.base
    }
    
    @discardableResult
    func semanticContent(_ attr: UISemanticContentAttribute) -> Base {
        self.base.semanticContentAttribute = attr
        return self.base
    }
}
