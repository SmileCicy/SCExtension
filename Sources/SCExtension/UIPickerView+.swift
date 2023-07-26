//
//  UIPickerView+.swift
//  
//
//  Created by Smile on 2023/5/24.
//

import Foundation
import UIKit

public extension NameSpaceWrapper where Base: UIPickerView {
    
    @discardableResult
    func delegate(_ delegate: UIPickerViewDelegate) -> Base {
        self.base.delegate = delegate
        return self.base
    }
    
    @discardableResult
    func datasource(_ datasource: UIPickerViewDataSource) -> Base {
        self.base.dataSource = datasource
        return self.base
    }
}
