//
//  MyChatViewController.swift
//  OurProjectBySwift
//
//  Created by liuyong on 16/1/25.
//  Copyright © 2016年 www.niuduz.com. All rights reserved.
//

import UIKit

class MyChatViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.backBarItem()
        navigationItem.title = "我的约谈"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
