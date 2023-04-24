//
//  UITableView+.swift
//  SCExtension
//
//  Created by Smile on 2022/9/24.
//

import Foundation
import UIKit

public extension NameSpaceWrapper where Base: UITableView {
    func dequeueCell<T: UITableViewCell>(_ className: T.Type, _ index: IndexPath) -> T {
        guard let cell = self.base.dequeueReusableCell(withIdentifier: String(describing: className), for: index) as? T else {
            fatalError("did not register cell \(String(describing: className))")
        }
        return cell
    }
    
    func dequeueHeaderFooter<T: UITableViewHeaderFooterView>(_ className: T.Type) -> T {
        guard let headerFooter = self.base.dequeueReusableHeaderFooterView(withIdentifier: String(describing: className)) as? T else {
            fatalError("did not register header footer \(String(describing: className))")
        }
        return headerFooter
    }
    
    @discardableResult
    func register<T: UITableViewHeaderFooterView>(_ className: T.Type) -> Base {
        self.base.register(T.self, forHeaderFooterViewReuseIdentifier: String(describing: className))
        return self.base
    }
    
    @discardableResult
    func register<T: UITableViewCell>(_ className: T.Type) -> Base {
        self.base.register(T.self, forCellReuseIdentifier: String(describing: className))
        return self.base
    }
    
    @discardableResult
    func delegate(_ delegate: UITableViewDelegate) -> Base {
        self.base.delegate = delegate
        return self.base
    }
    
    @discardableResult
    func datasource(_ datasource: UITableViewDataSource) -> Base {
        self.base.dataSource = datasource
        return self.base
    }
}

public extension UITableView {
    static let defaultConfig: ((UITableView) -> Void) = { t in
        t.estimatedRowHeight = 100
        t.rowHeight = UITableView.automaticDimension
        t.tableFooterView = UIView()
        t.separatorStyle = .none
        t.showsVerticalScrollIndicator = false
        t.contentInsetAdjustmentBehavior = .never
        if #available(iOS 15.0, *) {
            t.sectionHeaderTopPadding = 0
        }
    }
}
