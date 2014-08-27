//
//  ViewController.swift
//  LearnSwift
//
//  Created by QiMengJin on 14-8-24.
//  Copyright (c) 2014年 QiMengJin_LYS. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{
    
    
    var myTalbeView:UITableView?;
    
    var array = NSMutableArray()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.navigationController.navigationBar.translucent = false;
        
        self.title = "Swift World";
        
        array.addObject("UIFont");
        
        myTalbeView = UITableView(frame: self.view.frame);
        myTalbeView?.delegate = self;
        myTalbeView?.dataSource = self;
        self.view.addSubview(self.myTalbeView!);
    }
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return array.count;
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        
        let cellIdentifier: String = "cell"
        // may be no value, so use optional
        var cell: UITableViewCell? = tableView.dequeueReusableCellWithIdentifier(cellIdentifier) as? UITableViewCell
        
        if cell == nil { // no value
            cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: cellIdentifier)
        }
        cell?.textLabel.text = array[indexPath.row] as String
        
        return cell;
    }
    
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        
        let obj = array[indexPath.row] as String
        
        if obj == "UIFont" {

            var ctrl = FontViewController();
            ctrl.title = obj
            self.navigationController.pushViewController(ctrl, animated: true);
            
            
        }else {
            var detailCtrl = DetailViewController();
            detailCtrl.title = "\(indexPath.row)"
            detailCtrl.dataArray = ["0-0","0-1"];
            self.navigationController.pushViewController(detailCtrl, animated: true);
        }
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

