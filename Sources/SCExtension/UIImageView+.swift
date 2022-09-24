//
//  UIImageView+.swift
//  SCExtension
//
//  Created by Smile on 2022/9/24.
//

import Foundation
import UIKit

public extension NameSpaceWrapper where Base: UIImageView {
    
    @discardableResult
    func contentMode(_ mode: UIView.ContentMode) -> Base {
        self.base.contentMode = mode
        return self.base
    }
    
    @discardableResult
    func image(_ name: String) -> Base {
        self.base.image = UIImage(named: name)
        return self.base
    }
    
    @discardableResult
    func isUser(_ valid: Bool = true) -> Base {
        self.base.isUserInteractionEnabled = valid
        return self.base
    }
}
