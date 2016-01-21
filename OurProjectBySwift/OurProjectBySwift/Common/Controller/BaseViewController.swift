//
//  BaseViewController.swift
//  OurProjectBySwift
//
//  Created by zhoupushan on 16/1/13.
//  Copyright © 2016年 www.niuduz.com. All rights reserved.
//

import UIKit
import MJRefresh

enum RefershState{
    case RefershUp,RefershDown
}

class BaseViewController: UIViewController {
    
    var hideNaviBar : Bool = false{
        willSet
        {
            self.navigationController?.navigationBarHidden = newValue
        }
    }
    
    var hideBottonBar = false{
        willSet{
            self.hidesBottomBarWhenPushed = newValue
        }
    }
    
    var screenLayout = false{
        willSet{
            if newValue
            {
                self.extendedLayoutIncludesOpaqueBars = false
                self.automaticallyAdjustsScrollViewInsets = true
                self.edgesForExtendedLayout = .All;
            }
            else
            {
                self.extendedLayoutIncludesOpaqueBars = true
                self.automaticallyAdjustsScrollViewInsets = false
                self.edgesForExtendedLayout = .None;
            }
        }
    }
    
    var httpUtil : NetWorkingUtil{
        return NetWorkingUtil.shareNetWorking
    }
    
    var refershState : RefershState = .RefershDown

// MARK: - Life Circel
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        hideNaviBar = false
        hideBottonBar = true
        screenLayout = false
    }
    
// MARK: - BarItem
    func backBarItem() -> PSBarButtonItem{
        
        let backItme = PSBarButtonItem(back_normalImageName: "", hightImageName: "", target: self, action: "backAction")
        navigationController?.navigationItem.leftBarButtonItem = backItme
        return backItme
    }
    
    func backAction(){
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    func setupBarItemWithTitle(title:String, action:Selector, leftOrRight:Bool) -> PSBarButtonItem{
        let barItem = PSBarButtonItem(ps_title: title, target: self, action: action)
        if (leftOrRight){
            navigationController?.navigationItem.leftBarButtonItem = barItem
        }
        else{
            navigationController?.navigationItem.rightBarButtonItem = barItem
        }
        return barItem
    }
    
    func setupItemWithImageName(normalImageName:String, selectImageName:String, hightImageName:String, action:Selector, leftOrRight:Bool) -> PSBarButtonItem{
        let barItem = PSBarButtonItem(ps_normalImageName: normalImageName, selectedImageName: selectImageName, hightImageName: hightImageName, target: self, action: action)
        if (leftOrRight){
            navigationController?.navigationItem.leftBarButtonItem = barItem
        }
        else{
            navigationController?.navigationItem.rightBarButtonItem = barItem
        }
        return barItem
    }
    
    // MARK: - Refresh
    func setupHeaderRefresh(scrollView:UIScrollView){
        let headerRefresh = MJRefreshNormalHeader(refreshingTarget: self, refreshingAction: "refreshHeaderAction")
        headerRefresh.stateLabel?.font = UIFont.systemFontOfSize(12)
        headerRefresh.lastUpdatedTimeLabel?.font = UIFont.systemFontOfSize(12)
        scrollView.mj_header = headerRefresh
    }
    
    func setupFooterRefresh(scrollView:UIScrollView){
        let footerRefresh = MJRefreshBackNormalFooter(refreshingTarget: self, refreshingAction: "refreshFooterAction")
        footerRefresh.stateLabel?.font = UIFont.systemFontOfSize(12)
        footerRefresh.setTitle("正在刷新...", forState: .Idle)
        footerRefresh.setTitle("正在刷新...", forState: .Pulling)
        footerRefresh.setTitle("正在刷新...", forState: .Refreshing)
        footerRefresh.arrowView?.alpha = 0.0
        scrollView.mj_footer = footerRefresh
    }
    
    func setRefreshWithScrollView(scrollView:UIScrollView){
        setupFooterRefresh(scrollView)
        setupHeaderRefresh(scrollView)
    }
    
    func refreshHeaderAction(){
        
    }
    
    func refreshFooterAction(){
        
    }
}
