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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.title = "Swift World";
        
        myTalbeView = UITableView(frame: self.view.frame);
        myTalbeView?.delegate = self;
        myTalbeView?.dataSource = self;
        self.view.addSubview(self.myTalbeView!);
    }
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return 5;
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        
        let cellIdentifier: String = "cell"
        // may be no value, so use optional
        var cell: UITableViewCell? = tableView.dequeueReusableCellWithIdentifier(cellIdentifier) as? UITableViewCell
        
        if cell == nil { // no value
            cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: cellIdentifier)
        }
        cell?.textLabel.text = "\(indexPath.row)"
        
        return cell;
    }
    
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        
        var detailCtrl = DetailViewController();
        detailCtrl.title = "\(indexPath.row)"
        self.navigationController.pushViewController(detailCtrl, animated: true);
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

