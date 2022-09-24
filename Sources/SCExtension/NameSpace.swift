//
//  NameSpace.swift
//  SCExtension
//
//  Created by Smile on 2021/12/8.
//

import Foundation

public struct NameSpaceWrapper<Base> {
    public let base: Base
    init(_ base: Base) {
        self.base = base
    }
}

public protocol NameSpaceCompatibleObjct: AnyObject {}
public protocol NameSpaceCompatibleValue {}

public extension NameSpaceCompatibleObjct {
    var sc: NameSpaceWrapper<Self> {
        get {
            return NameSpaceWrapper(self)
        }
    }
}

public extension NameSpaceCompatibleValue {
    var sc: NameSpaceWrapper<Self> {
        get {
            return NameSpaceWrapper(self)
        }
    }
}
