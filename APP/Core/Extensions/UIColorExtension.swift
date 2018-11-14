//
//  UIColorExtension.swift
//  APP
//
//  Created by funny on 2018/9/6.
//  Copyright © 2018年 Funny. All rights reserved.
//

import UIKit

extension UIColor {

    // 便利构造函数
    convenience init(_ r: CGFloat ,_ g: CGFloat , _ b: CGFloat , _ a: CGFloat = 1.0) {
        self.init(red: r / 255.0,
                  green: g / 255.0,
                  blue: b / 255.0,
                  alpha: a)
    }

    //16进制色值
    convenience init?(hexString: String, alpha: CGFloat = 1.0) {
        var formatted = hexString.replacingOccurrences(of: "0x", with: "")
        formatted = formatted.replacingOccurrences(of: "#", with: "")
        if let hex = Int(formatted, radix: 16) {
            let red = CGFloat(CGFloat((hex & 0xFF0000) >> 16)/255.0)
            let green = CGFloat(CGFloat((hex & 0x00FF00) >> 8)/255.0)
            let blue = CGFloat(CGFloat((hex & 0x0000FF) >> 0)/255.0)
            self.init(red: red, green: green, blue: blue, alpha: alpha)        } else {
            return nil
        }
    }

    //单一色值的设置
    convenience init(gray: CGFloat, alpha: CGFloat = 1) {
        self.init(gray, gray, gray, alpha)
    }

    //设置随机色
    class var random: UIColor {
        return UIColor(CGFloat(arc4random_uniform(256) + 1),
                       CGFloat(arc4random_uniform(256) + 1),
                       CGFloat(arc4random_uniform(256) + 1),
                       CGFloat(arc4random_uniform(100))/100)
    }

    //主题色
    func themeColor(_ alpha: CGFloat) -> UIColor {
        return UIColor.init(128, 213, 201, alpha)
    }

    //获取单色的图片
    func image() -> UIImage {
        let rect = CGRect(x: 0, y: 0, width: 1, height: 1)
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()
        context!.setFillColor(self.cgColor)
        context!.fill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image!
    }
}
