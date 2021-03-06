//
//  DJUtil.swift
//  DJActivityIndicatorView
//
//  Created by 季勤强 on 16/9/28.
//  Copyright © 2016年 季勤强. All rights reserved.
//

import UIKit

let defaultFrame = CGRect(origin: CGPointZero, size: CGSizeMake(156.0, 156.0))

func RGB(red red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat = 1.0)-> UIColor {
    return UIColor(red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: alpha)
}

let whiteColor = UIColor.whiteColor()
let blackColor = UIColor.blackColor()