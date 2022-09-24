//
//  UISwitch+.swift
//  SCExtension
//
//  Created by Smile on 2022/9/24.
//

import Foundation
import UIKit

public extension NameSpaceWrapper where Base: UISwitch {
    @discardableResult
    func onColor(_ color: UIColor) -> Base {
        self.base.onTintColor = color
        return self.base
    }
    
    @discardableResult
    func isOn(_ valid: Bool = true) -> Base {
        self.base.isOn = valid
        return self.base
    }
}
