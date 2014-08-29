//
//  NetWorkCtrl.swift
//  LearnSwift
//
//  Created by QiMENG on 14-8-29.
//  Copyright (c) 2014年 QiMengJin_LYS. All rights reserved.
//

import Foundation

class NetWorkCtrl : BaseViewController {
    
    
    var get网络请求 : ASIHTTPRequest?
    
    var textField : UITextField?
    var textView : UITextView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField = UITextField(frame: CGRectMake(5, 5, self.view.frame.size.width - 10, 35))
        textField?.roundCorner(5)
        textField?.backgroundColor = UIColor.lightGrayColor()
        textField?.text = "http://qimeng.github.io/"
        self.view.addSubview(textField!)
        
        var button = UIButton().allocButton(CGRectMake(5, CGRectGetMaxY(textField!.frame)+5, self.view.frame.size.width - 10, 35),
            normalTitle: "请求网络",
            selectedTitle: nil,
            font: nil,
            normalTitleColor:UIColor.greenColor(),
            selectedTitleColor: nil,
            backgroundColor: UIColor.lightGrayColor(),
            normalImage: nil,
            selectedImage: nil,
            normalBgImg: nil,
            selectedBgImg: nil,
            target: self,
            selector: "goAsiData")
        button.roundCorner(5)
        self.view.addSubview(button)
        
        textView = UITextView(frame: CGRectMake(5, CGRectGetMaxY(button.frame)+5, self.view.frame.size.width - 10, 200))
        textView?.roundCorner(5)
        textView?.backgroundColor = UIColor.lightGrayColor()
        
        self.view.addSubview(textView!)
        
    }
    
    func goAsiData() {
        
        textField?.resignFirstResponder()
        textView?.resignFirstResponder()
        
        clearASI()
        get网络请求 = ASIHTTPRequest(URL: NSURL.URLWithString(textField!.text))
        get网络请求!.delegate = self
        get网络请求!.didFinishSelector = "didFinishSelector:"
        get网络请求!.didFailSelector = "didFailSelector:"
        get网络请求!.startAsynchronous()
        
        SVProgressHUD.show()
    }
    
    func didFinishSelector(sender : ASIHTTPRequest) {
        let requestString = sender.responseString()
        
        textView?.text = requestString
        
//        let data: AnyObject! = requestString.objectFromJSONString()
//        
//        if data.isKindOfClass(NSDictionary) {
//            
////            let statu = data.objectForKey("STATU") as String
////            let alert = UIAlertView(title: "提示", message: statu, delegate: nil, cancelButtonTitle: "确定")
////            alert.show()
//            
//        }
        
        SVProgressHUD.showSuccessWithStatus("请求成功")
        
    }
    
    func didFailSelector(sender : ASIHTTPRequest) {
        
        SVProgressHUD.showErrorWithStatus("请求失败")
    }
    
    func clearASI() {
        
        get网络请求?.cancel()
        get网络请求?.clearDelegatesAndCancel()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        
        clearASI()
        SVProgressHUD.dismiss()
    }
    
}

