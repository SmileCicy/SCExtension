//
//  UIStackView+.swift
//  SCExtension
//
//  Created by Smile on 2022/9/24.
//

import Foundation
import UIKit

public extension NameSpaceWrapper where Base: UIStackView {
    @discardableResult
    func axis(_ axis: NSLayoutConstraint.Axis) -> Base {
        self.base.axis = axis
        return self.base
    }
    
    @discardableResult
    func distribut(_ dis: UIStackView.Distribution) -> Base {
        self.base.distribution = dis
        return self.base
    }
    
    func spacing(_ spacing: CGFloat) -> Base {
        self.base.spacing = spacing
        return self.base
    }
    
    @discardableResult
    func alignment(_ ali: UIStackView.Alignment) -> Base {
        self.base.alignment = ali
        return self.base
    }
    
    @discardableResult
    func addArrangedSubViews<T: UIView>(_ subs: T...) -> Base {
        subs.forEach { sub in
            self.base.addArrangedSubview(sub)
        }
        return self.base
    }
    
    @discardableResult
    func addArrangedSubViews(_ subs: [UIView]) -> Base {
        subs.forEach { sub in
            self.base.addArrangedSubview(sub)
        }
        return self.base
    }
}
