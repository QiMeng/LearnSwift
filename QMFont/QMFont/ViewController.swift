//
//  ViewController.swift
//  QMFont
//
//  Created by strongsoft on 14-8-26.
//  Copyright (c) 2014年 QiMeng_LYS. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDataSource,UITableViewDelegate{
    
    var fontArray = UIFont.familyNames();
    
    var myTableView: UITableView?;
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myTableView = UITableView(frame: self.view.frame, style: UITableViewStyle.Grouped);
        
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
        // Dispose of any resources that can be recreated.
    }


}

