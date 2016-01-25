//
//  NetWorkingUtil.swift
//  OurProjectBySwift
//
//  Created by zhoupushan on 16/1/15.
//  Copyright © 2016年 www.niuduz.com. All rights reserved.
//

import UIKit
import Alamofire

final public class NetWorkingUtil
{
    public static let sharedInstance:NetWorkingUtil = NetWorkingUtil()
    
    private let mainURL = "http://app.cf.niuduz.com/"
    private let appKey = "6b2244ecf5881e4aa6d4235d16be7b48"
    private var token : String?
    
    private init()
    {
        
    }
    
    deinit
    {
        
    }
    
    func requestDic(pathComponent:String, param:[String: AnyObject], completionHandler:(objs:NSData, status:Int, msg:String) -> Void){
        
        Alamofire.request(.POST, mainURL + pathComponent, parameters: param, encoding: .JSON, headers: nil)
            .responseJSON { response  in
            print(response.request)  // original URL request
            print(response.response) // URL response
            print(response.data)     // server data
            print(response.result)   // result of response serialization
            
            if let JSON = response.result.value {
                print("JSON: \(JSON)")
            }
        }
    }
    
    func uploadFile(pathComponent:String, param:[String: String], fileTypeAndDatas:[String:NSData], completionHandler:(objs:NSData, status:Int, msg:String) -> Void){
        Alamofire.upload(
            .POST,
            mainURL + pathComponent,
            headers: param,
            multipartFormData: { multipartFormData in
                let dateForm = NSDateFormatter()
                let dateStr = dateForm.stringFromDate(NSDate())
                for (dataType, data) in fileTypeAndDatas {
                    multipartFormData.appendBodyPart(data: data, name: dateStr + dataType, mimeType: dataType)
                }
            },
            encodingMemoryThreshold: Manager.MultipartFormDataEncodingMemoryThreshold) { encodingResult in
                    switch encodingResult
                {
                    case .Success(let upload, _, _):
                        upload.responseJSON { response in
                            debugPrint(response)
                            
                        }
                
                        upload.progress { bytesWritten, totalBytesWritten, totalBytesExpectedToWrite in
                            print(totalBytesWritten)
                            dispatch_async(dispatch_get_main_queue()) {
                                print("Total bytes written on main queue: \(totalBytesWritten)")
                            }
                        }
                        
                    case .Failure(let encodingError):
                        print(encodingError)
                }
            }
    }
    
    func downloadFile(pathComponent:String, param:[String: AnyObject],downloadProgress:(bytesRead:Int64, totalBytesRead:Int64, totalBytesExpectedToRead:Int64) -> Void, completionHandler:(objs:NSData, status:Int, msg:String) -> Void){
        let destination = Alamofire.Request.suggestedDownloadDestination(directory: .DocumentDirectory, domain: .UserDomainMask)
        Alamofire.download(.POST, mainURL + pathComponent, parameters: param, encoding: .JSON, headers: nil, destination: destination)
        .progress{ bytesRead, totalBytesRead, totalBytesExpectedToRead in
            
            dispatch_async(dispatch_get_main_queue()) {
                downloadProgress(bytesRead:bytesRead, totalBytesRead:totalBytesRead, totalBytesExpectedToRead:totalBytesExpectedToRead)
            }
        }
        .response { _, _, data, error in
                if let
            data = data,
            resumeDataString = NSString(data: data, encoding: NSUTF8StringEncoding){
                print("Resume Data: \(resumeDataString)")
            } else {
                print("Resume Data was empty")
            }
            
            completionHandler(objs:data!, status:1, msg:"")
        }
    }
}


//class var sharedInstance: LibraryAPI {
//    //2
//    struct Singleton {
//        //3
//        static let instance = LibraryAPI()
//    }
//    //4
//    return Singleton.instance
//}
