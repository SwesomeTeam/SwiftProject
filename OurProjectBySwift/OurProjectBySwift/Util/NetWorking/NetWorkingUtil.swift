//
//  NetWorkingUtil.swift
//  OurProjectBySwift
//
//  Created by zhoupushan on 16/1/15.
//  Copyright © 2016年 www.niuduz.com. All rights reserved.
//

import UIKit

class NetWorkingUtil{
    
    static let shareNetWorking: NetWorkingUtil = {
    
        return NetWorkingUtil()
    
    }()

    init(){
        
    }
    
//    public static let sharedInstance: Manager = {
//        let configuration = NSURLSessionConfiguration.defaultSessionConfiguration()
//        configuration.HTTPAdditionalHeaders = Manager.defaultHTTPHeaders
//        
//        return Manager(configuration: configuration)
//    }()
    
    
//    public init(
//        configuration: NSURLSessionConfiguration = NSURLSessionConfiguration.defaultSessionConfiguration(),
//        delegate: SessionDelegate = SessionDelegate(),
//        serverTrustPolicyManager: ServerTrustPolicyManager? = nil)
//    {
//        self.delegate = delegate
//        self.session = NSURLSession(configuration: configuration, delegate: delegate, delegateQueue: nil)
//        
//        commonInit(serverTrustPolicyManager: serverTrustPolicyManager)
//    }
}


