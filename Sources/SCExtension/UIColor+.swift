//
//  UIColor+.swift
//  SCExtension
//
//  Created by Smile on 2022/9/24.
//

import Foundation
import UIKit

public extension NameSpaceWrapper where Base: UIColor {
    func image(_ size: CGSize) -> UIImage {
        let rect = CGRect(origin: .zero, size: size)
        let render = UIGraphicsImageRenderer(bounds: rect)
        return render.image { context in
            self.base.setFill()
            context.fill(rect)
        }
    }
}
