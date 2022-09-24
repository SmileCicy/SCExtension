//
//  UIScrollView+.swift
//  SCExtension
//
//  Created by Smile on 2022/9/24.
//

import Foundation
import UIKit

public extension NameSpaceWrapper where Base: UIScrollView {
    
    @discardableResult
    func scrollEnabled(_ enabled: Bool) -> Base {
        self.base.isScrollEnabled = enabled
        return self.base
    }
    
    @discardableResult
    func delegate(_ delegate: UIScrollViewDelegate) -> Base {
        self.base.delegate = delegate
        return self.base
    }
    
}
