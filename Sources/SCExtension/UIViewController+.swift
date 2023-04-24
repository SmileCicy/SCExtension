//
//  UIViewController+.swift
//  
//
//  Created by Smile on 2023/4/24.
//

import Foundation
import UIKit

extension NameSpaceWrapper where Base: UIViewController {
    @discardableResult
    func title(_ text: String) -> Base {
        self.base.navigationItem.title = text
        return self.base
    }
}
