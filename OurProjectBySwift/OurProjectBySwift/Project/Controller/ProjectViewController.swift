//
//  ProjectViewController.swift
//  OurProjectBySwift
//
//  Created by zhoupushan on 16/1/21.
//  Copyright © 2016年 www.niuduz.com. All rights reserved.
//

import UIKit

class ProjectViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let segmentedControl = UISegmentedControl(items: ["回报众筹","股权众筹"])
        segmentedControl.frame.size.width = 200
        navigationItem.titleView = segmentedControl
    }
    
    
}
