//
//  PSBarButtonItem.swift
//  OurProjectBySwift
//
//  Created by zhoupushan on 16/1/20.
//  Copyright © 2016年 www.niuduz.com. All rights reserved.
//

import UIKit

class PSBarButtonItem: UIBarButtonItem {

    //TODO: 别忘记把返回按钮的图片给添加上
    convenience init(back_normalImageName:String, hightImageName:String?, target:AnyObject, action:Selector){
        let backView = UIButton(type: .Custom)
        backView.backgroundColor = UIColor.clearColor()
        backView.setImage(UIImage(named: "nav_back_normal"), forState: .Normal)
        backView.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 30)
        backView.frame = CGRectMake(0, 0, 44, 44)
        backView.addTarget(target, action:action, forControlEvents: .TouchUpInside)
        self.init(customView: backView)
    }
    
    //FIXME: fix me 提醒这里有一个bug
    convenience init(ps_title:String, target:AnyObject, action:Selector){
        
        self.init(title: ps_title, style: .Done, target: target, action: action)
        self.setTitlePositionAdjustment(UIOffsetMake(-5, 0), forBarMetrics: .Default)
        self.tintColor = UIColor.whiteColor()
    }
    
    convenience init(ps_normalImageName:String , selectedImageName:String?, hightImageName:String?, target:AnyObject, action:Selector){
        let custemView = UIButton(type: .Custom)
        
        // 可选
        let normalImage = UIImage(named: ps_normalImageName)
        custemView.setImage(normalImage, forState: .Normal)
        
        if let imageName = selectedImageName{
            custemView.setImage(UIImage(named: imageName), forState: .Selected)
        }
        
        if let imageName = hightImageName{
            custemView.setImage(UIImage(named: imageName), forState: .Highlighted)
        }
        
        custemView.addTarget(target, action: action, forControlEvents: .TouchUpInside)
        custemView.frame = CGRectMake(0, 0, normalImage!.size.width, normalImage!.size.height)
        self.init(customView: custemView)
    }
}
