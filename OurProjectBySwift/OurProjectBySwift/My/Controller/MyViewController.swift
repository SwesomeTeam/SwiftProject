//
//  MyViewController.swift
//  OurProjectBySwift
//
//  Created by zhoupushan on 16/1/21.
//  Copyright © 2016年 www.niuduz.com. All rights reserved.
//

import UIKit

class MyViewController: BaseViewController,UITableViewDelegate,UITableViewDataSource{
@IBOutlet var tableViewHeader: UIView!
@IBOutlet weak var myTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "我的"
    
        setTableViewInfo()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        setNaviInfo()
    }
    
    func setNaviInfo(){
        self.setupItemWithImageName("my_set", selectImageName: "", hightImageName: "", action: "setUpClick", leftOrRight: false)
    }
    
    func setTableViewInfo(){
        myTableView.tableHeaderView = tableViewHeader
        
        let tapGR = UITapGestureRecognizer(target: self, action: "tapClick:")
        tableViewHeader.addGestureRecognizer(tapGR)
        
        myTableView.tableFooterView = UIView(frame: CGRectMake(0, 0, myTableView.frame.size.width, 0))
        myTableView!.registerNib(UINib(nibName: "MyTableViewCell", bundle:nil), forCellReuseIdentifier: "MyTableViewCell")
    }
    
    func setUpClick(){
        let setupVC = SetupViewController()
        setupVC.hideBottomBar = true
        self.navigationController?.pushViewController(setupVC, animated: true)
    }
    
    func tapClick(sender:UITapGestureRecognizer){
        let personSetVC = PersonSetViewController()
        personSetVC.hideBottomBar = true
        self.navigationController?.pushViewController(personSetVC, animated: true)
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return 2
        }
        return 4
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 50
    }
    
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0{
            return 0.1
        }
        return 15
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell : MyTableViewCell = tableView.dequeueReusableCellWithIdentifier("MyTableViewCell", forIndexPath: indexPath) as! MyTableViewCell
        cell.selectionStyle = UITableViewCellSelectionStyle.None
        if indexPath.section == 0{
            if indexPath.row == 0{
                cell.myImageView?.image = UIImage(named: "myAccount")
                cell.myNameLab?.text = "我的余额"
                cell.myMoneyLab?.text = "¥1000"
            }else if indexPath.row == 1{
                cell.myImageView?.image = UIImage(named: "myBankCard")
                cell.myNameLab?.text = "银行卡管理"
                cell.myMoneyLab?.text = "2张"
            }
        }else if indexPath.section == 1{
            if indexPath.row == 0{
                cell.myImageView?.image = UIImage(named: "myStart")
                cell.myNameLab?.text = "发起的项目"
            }else if indexPath.row == 1{
                cell.myImageView?.image = UIImage(named: "myInvest")
                cell.myNameLab?.text = "我的投资"
            }else if indexPath.row == 2{
                cell.myImageView?.image = UIImage(named: "guanzhu")
                cell.myNameLab?.text = "我的关注"
            }else if indexPath.row == 3{
                cell.myImageView?.image = UIImage(named: "yuetan")
                cell.myNameLab?.text = "我的约谈"
            }
        }
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if indexPath.section == 0{
            if indexPath.row == 0{
                let fundManageVC = FundManageViewController()
                fundManageVC.hideBottomBar = true
                self.navigationController?.pushViewController(fundManageVC, animated: true)
            }else if indexPath.row == 1{
                let bankManageVC = BankManageViewController()
                bankManageVC.hideBottomBar = true
                self.navigationController?.pushViewController(bankManageVC, animated: true)
            }
        }else if indexPath.section == 1{
            if indexPath.row == 0{
                let startProjectVC = StartProjectViewController()
                startProjectVC.hideBottomBar = true
                self.navigationController?.pushViewController(startProjectVC, animated: true)
            }else if indexPath.row == 1{
                let myInvestVC = MyInvestViewController()
                myInvestVC.hideBottomBar = true
                self.navigationController?.pushViewController(myInvestVC, animated: true)
            }else if indexPath.row == 2{
                let myAttentionVC = MyAttentionViewController()
                myAttentionVC.hideBottomBar = true
                self.navigationController?.pushViewController(myAttentionVC, animated: true)
            }else if indexPath.row == 3{
                let myChatVC = MyChatViewController()
                myChatVC.hideBottomBar = true
                self.navigationController?.pushViewController(myChatVC, animated: true)
            }
        }
    }
}
