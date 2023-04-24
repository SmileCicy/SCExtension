//
//  Int+.swift
//  SCExtension
//
//  Created by Smile on 2022/1/10.
//

import Foundation
import UIKit
import SwiftDate

public extension NameSpaceWrapper where Base == Int {
    var date: DateInRegion {
        return Date(timeIntervalSince1970: TimeInterval(self.base)).convertTo(region: .current)
    }
    
    var dateAsMs: DateInRegion {
        return Date(timeIntervalSince1970: TimeInterval(self.base/1000)).convertTo(region: .current)
    }
}

