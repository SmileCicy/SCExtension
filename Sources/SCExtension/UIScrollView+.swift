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
    
    @discardableResult
    func showH(_ valid: Bool) -> Base {
        self.base.showsHorizontalScrollIndicator = valid
        return self.base
    }
    
    @discardableResult
    func showV(_ valid: Bool) -> Base {
        self.base.showsVerticalScrollIndicator = valid
        return self.base
    }
    
    @discardableResult
    func maxZoomScale(_ value: CGFloat) -> Base {
        self.base.maximumZoomScale = value
        return self.base
    }
    
    @discardableResult
    func minZoomScale(_ value: CGFloat) -> Base {
        self.base.minimumZoomScale = value
        return self.base
    }
    
    @discardableResult
    func contentSize(_ value: CGSize) -> Base {
        self.base.contentSize = value
        return self.base
    }
    
    @discardableResult
    func contentOffset(_ value: CGPoint) -> Base {
        self.base.contentOffset = value
        return self.base
    }
    
    @discardableResult
    func setOffset(_ value: CGPoint, animated: Bool) -> Base {
        self.base.setContentOffset(value, animated: animated)
        return self.base
    }
    
}
