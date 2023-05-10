//
//  UIProgressView+.swift
//  SCExtension
//
//  Created by Smile on 2022/9/24.
//

import Foundation
import UIKit

public extension NameSpaceWrapper where Base: UIProgressView {
    @discardableResult
    func trackColor(_ color: UIColor) -> Base {
        self.base.trackTintColor = color
        return self.base
    }
    
    @discardableResult
    func trackColor(_ colorHex: String) -> Base {
        self.base.trackTintColor = colorHex.sc.color()
        return self.base
    }
    
    @discardableResult
    func progressColor(_ color: UIColor) -> Base {
        self.base.progressTintColor = color
        return self.base
    }
    
    @discardableResult
    func progressColor(_ colorHex: String) -> Base {
        self.base.progressTintColor = colorHex.sc.color()
        return self.base
    }
    
    @discardableResult
    func progress(_ value: Float) -> Base {
        self.base.progress = value
        return self.base
    }
    
    @discardableResult
    func setProgress(_ value: Float, _ animated: Bool = true) -> Base {
        self.base.setProgress(value, animated: animated)
        return self.base
    }
}
