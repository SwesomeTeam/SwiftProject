//
//  MyAttentionViewController.swift
//  OurProjectBySwift
//
//  Created by liuyong on 16/1/25.
//  Copyright © 2016年 www.niuduz.com. All rights reserved.
//

import UIKit

class MyAttentionViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.backBarItem()
        navigationItem.title = "我的关注"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
