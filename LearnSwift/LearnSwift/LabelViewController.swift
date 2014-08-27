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
        
        
        var label = allocLabel(CGRectMake(10, 10, 100, 50), text: "UILabel", textColor: UIColor.greenColor(), backgroundColor: UIColor.redColor(), font: UIFont.boldSystemFontOfSize(20) ,textAlignment:NSTextAlignment.Center)

        self.view.addSubview(label);
        
    }
    
    //创建 UILabel
    func allocLabel(frame:CGRect , text:String ,textColor:UIColor , backgroundColor:UIColor , font:UIFont , textAlignment:NSTextAlignment) ->UILabel {
        
        var label = UILabel(frame: frame);
        label.text = text;
        label.textColor = textColor;
        label.backgroundColor = backgroundColor;
        label.font = font;
        label.textAlignment = textAlignment;
        
        return label;
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
