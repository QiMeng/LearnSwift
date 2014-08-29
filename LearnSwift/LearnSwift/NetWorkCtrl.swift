//
//  NetWorkCtrl.swift
//  LearnSwift
//
//  Created by QiMENG on 14-8-29.
//  Copyright (c) 2014年 QiMengJin_LYS. All rights reserved.
//

import Foundation

class NetWorkCtrl : BaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var get网络请求 = ASIHTTPRequest(URL: NSURL.URLWithString("http://qimeng.github.io/"))
        get网络请求.delegate = self
        
        get网络请求.didFinishSelector = "didFinishSelector:"
        get网络请求.didFailSelector = "didFailSelector:"
        
        get网络请求.startAsynchronous()
        
        
        SVProgressHUD.show()
        
    }
    
    func didFinishSelector(sender : ASIHTTPRequest) {
        let requestString = sender.responseString()
        
        let data: AnyObject! = requestString.objectFromJSONString()
        
        SVProgressHUD.showSuccessWithStatus("请求成功")
        
    }
    func didFailSelector(sender : ASIHTTPRequest) {
        
        SVProgressHUD.showErrorWithStatus("请求失败")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

