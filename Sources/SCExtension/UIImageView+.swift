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
    func image(_ image: UIImage?) -> Base {
        self.base.image = image
        return self.base
    }
    
    @discardableResult
    func imageData(_ data: Data) -> Base {
        self.base.image = UIImage(data: data)
        return self.base
    }
    
    @discardableResult
    func imageName(_ name: String?) -> Base {
        if let name {
            self.base.image = UIImage(named: name)
        }else {
            self.base.image = nil
        }
        return self.base
    }
    
    @discardableResult
    func isUserEnabled(_ valid: Bool = true) -> Base {
        self.base.isUserInteractionEnabled = valid
        return self.base
    }
}
