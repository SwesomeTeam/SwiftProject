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
    
    func setTableViewInfo(){
        myTableView.tableHeaderView = tableViewHeader
        myTableView.tableFooterView = UIView(frame: CGRectMake(0, 0, myTableView.frame.size.width, 0))
        myTableView!.registerNib(UINib(nibName: "MyTableViewCell", bundle:nil), forCellReuseIdentifier: "MyTableViewCell")
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
                self.navigationController?.pushViewController(fundManageVC, animated: true)
            }else if indexPath.row == 1{
                let bankManageVC = BankManageViewController()
                self.navigationController?.pushViewController(bankManageVC, animated: true)
            }
        }else if indexPath.section == 1{
            if indexPath.row == 0{
                let startProjectVC = StartProjectViewController()
                self.navigationController?.pushViewController(startProjectVC, animated: true)
            }else if indexPath.row == 1{
                let myInvestVC = MyInvestViewController()
                self.navigationController?.pushViewController(myInvestVC, animated: true)
            }else if indexPath.row == 2{
                let myAttentionVC = MyAttentionViewController()
                self.navigationController?.pushViewController(myAttentionVC, animated: true)
            }else if indexPath.row == 3{
                let myChatVC = MyChatViewController()
                self.navigationController?.pushViewController(myChatVC, animated: true)
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
