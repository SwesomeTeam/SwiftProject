//
//  BaseNaviController.swift
//  OurProjectBySwift
//
//  Created by zhoupushan on 16/1/20.
//  Copyright © 2016年 www.niuduz.com. All rights reserved.
//

import UIKit

class BaseNaviController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationBar.barTintColor = UIColor(hexString:"#F35C56")
        navigationBar.barStyle = .Black
        navigationBar.tintColor = UIColor.whiteColor()
        navigationBar.titleTextAttributes = [NSFontAttributeName:UIFont.systemFontOfSize(18)]

    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
}
