//
//  ViewUtils.swift
//  WSJianShu
//
//  Created by wangzhen on 16/9/21.
//  Copyright © 2016年 www.wackosix.cn. All rights reserved.
//

import UIKit

class ViewUtils: NSObject {

    class func getSepLine() -> UIView {
        let view = UIView()
        view.backgroundColor = UIColor.getSepColor()
        return view
    }
}
