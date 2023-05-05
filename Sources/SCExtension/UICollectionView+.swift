//
//  UICollectionView+.swift
//  SCExtension
//
//  Created by Smile on 2022/9/24.
//

import Foundation
import UIKit

public extension NameSpaceWrapper where Base: UICollectionView {
    
    @discardableResult
    func register<T: UICollectionViewCell>(_ name: T.Type) -> Base {
        self.base.register(T.self, forCellWithReuseIdentifier: String(describing: name))
        return self.base
    }
    
    func dequeueCell<T: UICollectionViewCell>(_ name: T.Type, _ index: IndexPath) -> T {
        guard let cell = self.base.dequeueReusableCell(withReuseIdentifier: String(describing: name), for: index) as? T else {
            fatalError("did not register cell \(String(describing: name))")
        }
        return cell
    }
    
    @discardableResult
    func registerHeader<T: UICollectionReusableView>(_ className: T.Type) -> Base {
        self.base.register(T.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: String(describing: className))
        return self.base
    }
    
    func dequeueHeader<T: UICollectionReusableView>(_ className: T.Type, for index: IndexPath) -> T {
        guard let header = self.base.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: String(describing: className), for: index) as? T else {
            fatalError("did not register header \(String(describing: className))")
        }
        return header
    }
    
    @discardableResult
    func delegate(_ delegate: UICollectionViewDelegate) -> Base {
        self.base.delegate = delegate
        return self.base
    }
    
    @discardableResult
    func datasource(_ datasource: UICollectionViewDataSource) -> Base {
        self.base.dataSource = datasource
        return self.base
    }
    
    @discardableResult
    func multSelect(_ allow: Bool = true) -> Base {
        self.base.allowsMultipleSelection = allow
        return self.base
    }
}

public extension UICollectionView {
    static let defaultConfig: (UICollectionView)->Void = { c in
        c.showsVerticalScrollIndicator = false
        c.showsHorizontalScrollIndicator = false
        c.contentInsetAdjustmentBehavior = .never
        c.backgroundColor = .white
    }
}
