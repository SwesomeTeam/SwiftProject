//
//  MyViewController.swift
//  OurProjectBySwift
//
//  Created by zhoupushan on 16/1/21.
//  Copyright © 2016年 www.niuduz.com. All rights reserved.
//

import UIKit

class MyViewController: BaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "我的"
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(true);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
