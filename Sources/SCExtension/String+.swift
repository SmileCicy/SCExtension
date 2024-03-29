//
//  String+.swift
//  SCExtension
//
//  Created by Smile on 2022/9/24.
//

import Foundation
import CommonCrypto
import CryptoKit
import UIKit

public extension NameSpaceWrapper where Base == String {
    func md5(_ uppercase: Bool = false) -> String {
        if #available(iOS 13.0, *) {
            if uppercase {
                return Insecure.MD5.hash(data: self.base.data(using: .utf8)!)
                    .map { item in
                        return String(format: "%02X", item)
                    }.joined()
            }else {
                return Insecure.MD5.hash(data: self.base.data(using: .utf8)!)
                    .map { item in
                        return String(format: "%02x", item)
                    }.joined()
            }
        } else {
            let utf8 = self.base.cString(using: .utf8)
            var digest = [UInt8](repeating: 0, count: Int(CC_MD5_DIGEST_LENGTH))
            CC_MD5(utf8, CC_LONG(strlen(utf8!)), &digest)
            if uppercase {
                return digest.reduce("", { $0 + String(format: "%02X", $1)})
            }else {
                return digest.reduce("", { $0 + String(format: "%02x", $1)})
            }
        }
        
    }
    
    func partAttr(_ sub: String, _ attr: [NSAttributedString.Key: Any], _ subAttr: [NSAttributedString.Key: Any]) -> NSAttributedString {
        let attr = NSMutableAttributedString(string: self.base, attributes: attr)
        let subRange = (self.base as NSString).range(of: sub)
        attr.addAttributes(subAttr, range: subRange)
        return attr
    }
    
    func attr(_ attr: [NSAttributedString.Key: Any]) -> NSAttributedString {
        return NSAttributedString(string: self.base, attributes: attr)
    }
    
    func color(_ alpha: CGFloat = 1.0) -> UIColor {
        guard self.base.count >= 6 else {
            return UIColor.clear
        }
        var hexString = self.base.uppercased()
        if hexString.hasPrefix("#") {
            hexString = String(hexString.dropFirst())
        }
        var rgbValue: UInt64 = 0
        Scanner(string: hexString).scanHexInt64(&rgbValue)
        
        let red = CGFloat((rgbValue & 0xff0000) >> 16) / 0xff
        let green = CGFloat((rgbValue & 0xff00) >> 8) / 0xff
        let blue = CGFloat(rgbValue & 0xff) / 0xff
        
        return UIColor(red: red, green: green, blue: blue, alpha: alpha)
    }
}
