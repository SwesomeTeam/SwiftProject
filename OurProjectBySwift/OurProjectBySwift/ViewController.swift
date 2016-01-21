//
//  ViewController.swift
//  OurProjectBySwift
//
//  Created by zhoupushan on 16/1/11.
//  Copyright © 2016年 www.niuduz.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

//        let ref = 
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
// MARK: - this is a title
    @IBAction func gotoSystemSetting(sender: UIButton) {
        let application = UIApplication.sharedApplication()
        
        application.openURL(NSURL(string: UIApplicationOpenSettingsURLString)!)
        
    }

}

