//
//  UIColor+Common.swift
//  WSJianShu
//
//  Created by wangzhen on 16/9/21.
//  Copyright © 2016年 www.wackosix.cn. All rights reserved.
//

import UIKit

extension UIColor {
    
    // MARK:- common method
    class func getSepColor() -> UIColor {
        
        return UIColor.colorWithHex(hex: 0x8e8e8e)
    }
    
    class func colorWithHex(hex: NSInteger) -> UIColor {
        
        return UIColor(netHex: hex)
    }
    
    // MARK: - init method
    convenience init(netHex:NSInteger) {
        self.init(red:(netHex >> 16) & 0xff, green:(netHex >> 8) & 0xff, blue:netHex & 0xff)
    }
    
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
}