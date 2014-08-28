//
//  FontViewController.swift
//  LearnSwift
//
//  Created by QiMengJin on 14-8-27.
//  Copyright (c) 2014年 QiMengJin_LYS. All rights reserved.
//

import Foundation
import UIKit

class FontViewController : BaseViewController , UITableViewDelegate,UITableViewDataSource {
    
    var fontArray = UIFont.familyNames();
    
    var myTableView: UITableView?;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTableView = UITableView(frame: self.view.frame, style: UITableViewStyle.Grouped);
        myTableView?.autoresizingMask = UIViewAutoresizing.FlexibleHeight
        
        myTableView?.delegate = self;
        myTableView?.dataSource = self;
        
        self.view.addSubview(myTableView!);
    }
    
    func tableView(tableView: UITableView!, heightForRowAtIndexPath indexPath: NSIndexPath!) -> CGFloat {
        return 60
    }
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return fontArray.count;
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        
        let iden = "UITableCell"
        
        var cell = tableView.dequeueReusableCellWithIdentifier(iden) as? UITableViewCell
        if cell == nil {
            cell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: iden)
        }
        
        cell?.textLabel.font = UIFont(name: fontArray[indexPath.row] as String , size: 17)
        
        cell?.textLabel.text = "1234567890-中文字体"
        
        cell?.detailTextLabel.text = fontArray[indexPath.row] as? String
        
        
        return cell
    }
    
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        
        let font = fontArray[indexPath.row] as? String
        
        var alert = UIAlertView(title: "字体", message: font , delegate: nil, cancelButtonTitle: "确定");
        
        alert.show()
        
        println(font)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}