//
//  TextFieldViewController.swift
//  LearnSwift
//
//  Created by QiMengJin on 14-8-28.
//  Copyright (c) 2014年 QiMengJin_LYS. All rights reserved.
//

import Foundation
import UIKit

class TextFieldViewController : BaseViewController ,UITextFieldDelegate{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //简单的输入框
        var 输入框 = UITextField(frame: CGRectMake(5, 5, 200, 30))
        输入框.backgroundColor = UIColor.grayColor()
        输入框.roundCorner(3)
        输入框.delegate = self
        self.view.addSubview(输入框)
        

        //
        var textField = UITextField(frame: CGRectMake(5, 40, 200, 30))
        self.view.addSubview(textField)
        textField.backgroundColor = UIColor.greenColor()
        textField.returnKeyType = UIReturnKeyType.Done
        textField.delegate = self;
        
        var leftView = UIView(frame: CGRectMake(0, 0, 30, 30))
        leftView.backgroundColor = UIColor.redColor()
        textField.leftView = leftView
        textField.leftViewMode = UITextFieldViewMode.Always;
        
        var rightView = UIView(frame: CGRectMake(0, 0, 30, 30))
        rightView.backgroundColor = UIColor.orangeColor()
        textField.rightView = rightView
        textField.rightViewMode = UITextFieldViewMode.Always;
        
        
        
        
        
        
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
