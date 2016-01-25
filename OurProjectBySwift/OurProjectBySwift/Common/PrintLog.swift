//
//  PrintLog.swift
//  OurProjectBySwift
//
//  Created by zhoupushan on 16/1/21.
//  Copyright © 2016年 www.niuduz.com. All rights reserved.
//

import Foundation

class PrintLog {
    static func printLog<T>(message: T,
        file: String = __FILE__,
        method: String = __FUNCTION__,
        line: Int = __LINE__)
    {
        #if DEBUG
        print("\((file as NSString).lastPathComponent)[\(line)], \(method): \(message)")
        #endif
    }
}