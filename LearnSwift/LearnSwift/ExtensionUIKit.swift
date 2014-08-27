//
//  ExtensionUIKit.swift
//  LearnSwift
//
//  Created by QiMengJin on 14-8-27.
//  Copyright (c) 2014年 QiMengJin_LYS. All rights reserved.
//

import Foundation
import UIKit

extension UIView{
    var width:      CGFloat { return self.frame.size.width }
    var height:     CGFloat { return self.frame.size.height }
    var size:       CGSize  { return self.frame.size}
    
    var origin:     CGPoint { return self.frame.origin }
    var x:          CGFloat { return self.frame.origin.x }
    var y:          CGFloat { return self.frame.origin.y }
    var centerX:    CGFloat { return self.center.x }
    var centerY:    CGFloat { return self.center.y }
    
    var left:       CGFloat { return self.frame.origin.x }
    var right:      CGFloat { return self.frame.origin.x + self.frame.size.width }
    var top:        CGFloat { return self.frame.origin.y }
    var bottom:     CGFloat { return self.frame.origin.y + self.frame.size.height }
    
    func setX(x:CGFloat)
    {
        self.frame.origin = CGPointMake(x, self.frame.origin.y)
    }
    
    func setY(y:CGFloat)
    {
        self.frame.origin = CGPointMake(self.frame.origin.x, y)
    }
    
    func setCenterX(x:CGFloat)
    {
        self.center = CGPointMake(x, self.center.y)
    }
    
    func setCenterY(y:CGFloat)
    {
        self.center = CGPointMake(self.center.x, y)
    }
    func roundCorner(radius:CGFloat)
    {
        self.layer.cornerRadius = radius;
        self.layer.masksToBounds = true;
    }
}


extension UILabel {

    //创建 UILabel
    func allocLabel(frame:CGRect ,
                     text:String ,
                textColor:UIColor ,
          backgroundColor:UIColor ,
                     font:UIFont ,
            textAlignment:NSTextAlignment) ->UILabel
    {

        self.frame = frame;
        self.text = text;
        self.textColor = textColor;
        self.backgroundColor = backgroundColor;
        self.font = font;
        self.textAlignment = textAlignment;
        
        return self;
    }
}

extension UIButton {


    func allocButton(frame:CGRect ,
               normalTitle:String? ,
             selectedTitle:String? ,
                      font:UIFont?,
          normalTitleColor:UIColor? ,
        selectedTitleColor:UIColor? ,
           backgroundColor:UIColor?,
               normalImage:UIImage?,
             selectedImage:UIImage?,
               normalBgImg:UIImage?,
             selectedBgImg:UIImage?,
                    target:AnyObject?,
                  selector:Selector)->UIButton
    {

        self.frame = frame;
        self.setTitle(normalTitle, forState: UIControlState.Normal);
        self.setTitle(selectedTitle, forState: UIControlState.Selected);
        
        self.setTitleColor(normalTitleColor, forState: UIControlState.Normal);
        self.setTitleColor(selectedTitleColor, forState: UIControlState.Selected);
        
        self.titleLabel.font = font;

        self.backgroundColor = backgroundColor;

        self.setImage(normalImage, forState: UIControlState.Normal);
        self.setImage(selectedImage, forState: UIControlState.Selected);

        self.setBackgroundImage(normalBgImg, forState: UIControlState.Normal);
        self.setBackgroundImage(selectedBgImg, forState: UIControlState.Selected);
        
        self.addTarget(target, action: selector, forControlEvents: UIControlEvents.TouchUpInside)


        
        return self;
    }

}



