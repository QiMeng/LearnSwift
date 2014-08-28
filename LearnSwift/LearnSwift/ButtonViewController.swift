//
//  ButtonViewController.swift
//  LearnSwift
//
//  Created by strongsoft on 14-8-27.
//  Copyright (c) 2014年 QiMengJin_LYS. All rights reserved.
//

import Foundation
import UIKit

class ButtonViewController : BaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var button = UIButton().allocButton(CGRectMake(10, 10, 200, 50),
            normalTitle: "UIButton normal",
            selectedTitle: "UIButton - selected",
            font: nil,
            normalTitleColor:UIColor.greenColor(),
            selectedTitleColor: nil,
            backgroundColor: UIColor.grayColor(),
            normalImage: nil,
            selectedImage: nil,
            normalBgImg: nil,
            selectedBgImg: nil,
            target: self,
            selector: "buttonAction:")
        
        self.view.addSubview(button)
        
    }
    
    func buttonAction(sender:UIButton) {
        
        sender.selected = !sender.selected;
        
        
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}