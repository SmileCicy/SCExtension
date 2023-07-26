//
//  Int+.swift
//  SCExtension
//
//  Created by Smile on 2022/1/10.
//

import Foundation
import UIKit

public extension NameSpaceWrapper where Base == Int {
    var date: Date {
        return Date(timeIntervalSince1970: TimeInterval(self.base))
    }
    
    var dateAsMs: Date {
        return Date(timeIntervalSince1970: TimeInterval(self.base/1000))
    }
}

