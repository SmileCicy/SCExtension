//
//  UIView+.swift
//  SCExtension
//
//  Created by Smile on 2021/12/8.
//

import Foundation
import UIKit
import SnapKit

extension UIView: NameSpaceCompatibleObjct {}

public extension NameSpaceWrapper where Base: UIControl {
    
    @discardableResult
    func add(_ target: Any?, _ action: Selector, _ event: UIControl.Event = .touchUpInside) -> Base {
        self.base.addTarget(target, action: action, for: event)
        return self.base
    }
}

public extension NameSpaceWrapper where Base: UIView {
    
    @discardableResult
    func config(_ config: (Base) -> Void) -> Base {
        config(self.base)
        return self.base
    }
    
    @discardableResult
    func constraints(_ snpMaker: (ConstraintMaker) -> Void) -> Base {
        self.base.snp.makeConstraints { make in
            snpMaker(make)
        }
        return self.base
    }
    
    @discardableResult
    func reconstraints(_ snpMaker: (ConstraintMaker) -> Void) -> Base {
        self.base.snp.remakeConstraints { make in
            snpMaker(make)
        }
        return self.base
    }
    
    @discardableResult
    func updateconstraints(_ snpMaker: (ConstraintMaker) -> Void) -> Base {
        self.base.snp.updateConstraints { make in
            snpMaker(make)
        }
        return self.base
    }
    
    @discardableResult
    func bgColor(_ value: UIColor) -> Base {
        self.base.backgroundColor = value
        return self.base
    }
    
    @discardableResult
    func alpha(_ value: CGFloat) -> Base {
        self.base.alpha = value
        return self.base
    }
    
    @discardableResult
    func isHidden(_ value: Bool = true) -> Base {
        self.base.isHidden = value
        return self.base
    }
    
    @discardableResult
    func corner(_ corner: CGFloat,_ mask: Bool = true) -> Base {
        self.base.layer.cornerRadius = corner
        self.base.layer.masksToBounds = mask
        self.base.clipsToBounds = mask
        return self.base
    }
    
    @discardableResult
    func cornersMask(_ corners: CACornerMask) -> Base {
        self.base.layer.maskedCorners = corners
        return self.base
    }
    
    @discardableResult
    func shadowColor(_ color: UIColor) -> Base {
        self.base.layer.shadowColor = color.cgColor
        return self.base
    }
    
    @discardableResult
    func shadowOffset(_ offset: CGSize) -> Base {
        self.base.layer.shadowOffset = offset
        return self.base
    }
    
    @discardableResult
    func shadowOpacity(_ opacity: Float) -> Base {
        self.base.layer.shadowOpacity = opacity
        return self.base
    }
    
    @discardableResult
    func shadowRadius(_ radius: CGFloat) -> Base {
        self.base.layer.shadowRadius = radius
        return self.base
    }
    
    @discardableResult
    func borderColor(_ color: UIColor) -> Base {
        self.base.layer.borderColor = color.cgColor
        return self.base
    }
    
    @discardableResult
    func borderWidth(_ width: CGFloat) -> Base {
        self.base.layer.borderWidth = width
        return self.base
    }
    
    @discardableResult
    func clip(_ clip: Bool) -> Base {
        self.base.clipsToBounds = clip
        self.base.layer.masksToBounds = clip
        return self.base
    }
    
    @discardableResult
    func addsubviews<T: UIView>(_ subs: T...) -> Base {
        subs.forEach { sub in
            self.base.addSubview(sub)
        }
        return self.base
    }
    
    @discardableResult
    func addsubviews<T: UIView>(_ subs: [T]) -> Base {
        subs.forEach { sub in
            self.base.addSubview(sub)
        }
        return self.base
    }
    
    @discardableResult
    func tag(_ tag: Int) -> Base {
        self.base.tag = tag
        return self.base
    }
}
