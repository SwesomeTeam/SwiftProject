//
//  MyTableViewCell.swift
//  OurProjectBySwift
//
//  Created by liuyong on 16/1/25.
//  Copyright © 2016年 www.niuduz.com. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var myNameLab: UILabel!
    @IBOutlet weak var myMoneyLab: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
