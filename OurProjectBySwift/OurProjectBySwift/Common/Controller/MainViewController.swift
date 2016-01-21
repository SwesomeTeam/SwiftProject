//
//  MainViewController.swift
//  OurProjectBySwift
//
//  Created by zhoupushan on 16/1/20.
//  Copyright © 2016年 www.niuduz.com. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let naviColor = UIColor.navigaColor()
        
        let item1 = UITabBarItem()
        item1.tag = 1
        item1.title = "首页"
        item1.image = UIImage(named: "home3")
        item1.selectedImage = UIImage(named: "home")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        item1.setTitleTextAttributes([NSForegroundColorAttributeName:naviColor!], forState: .Selected)
        
        let item2 = UITabBarItem()
        item2.tag = 2
        item2.title = "项目"
        item2.image = UIImage(named: "tab-project")
        item2.selectedImage = UIImage(named: "tab-Project-Click")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        item2.setTitleTextAttributes([NSForegroundColorAttributeName:naviColor!], forState: .Selected)
        
        let item3 = UITabBarItem()
        item3.tag = 3
        item3.title = "消息"
        item3.image = UIImage(named: "tab-new")
        item3.selectedImage = UIImage(named: "tab-new-Click")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        item3.setTitleTextAttributes([NSForegroundColorAttributeName:naviColor!], forState: .Selected)

        let item4 = UITabBarItem()
        item4.tag = 3
        item4.title = "我的"
        item4.image = UIImage(named: "tab-my")
        item4.selectedImage = UIImage(named: "tab-my-Click")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        item4.setTitleTextAttributes([NSForegroundColorAttributeName:naviColor!], forState: .Selected)
        
        
    }
}
