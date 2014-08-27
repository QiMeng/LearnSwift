//
//  LabelViewController.swift
//  LearnSwift
//
//  Created by strongsoft on 14-8-27.
//  Copyright (c) 2014年 QiMengJin_LYS. All rights reserved.
//

import Foundation
import UIKit

class LabelViewController : BaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var label = UILabel().allocLabel(CGRectMake(10, 10, 100, 50), text: "UILabel", textColor: UIColor.greenColor(), backgroundColor: UIColor.redColor(), font: UIFont.boldSystemFontOfSize(20) ,textAlignment:NSTextAlignment.Center);
        label.roundCorner(20);
        self.view.addSubview(label);
        

        
        
    }
    

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
