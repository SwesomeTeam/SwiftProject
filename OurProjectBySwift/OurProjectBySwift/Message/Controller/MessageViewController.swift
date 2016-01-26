//
//  MessageViewController.swift
//  OurProjectBySwift
//
//  Created by zhoupushan on 16/1/21.
//  Copyright © 2016年 www.niuduz.com. All rights reserved.
//

import UIKit

class MessageViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let segmentedControl = UISegmentedControl(items: ["私信","通知"])
        segmentedControl.selectedSegmentIndex = 0
        segmentedControl.frame.size.width = 200
        navigationItem.titleView = segmentedControl

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
