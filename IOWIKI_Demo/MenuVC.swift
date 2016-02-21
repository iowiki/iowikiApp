//
//  ViewController.swift
//  IOWIKI_Demo
//
//  Created by Gurpreet on 21/02/16.
//  Copyright © 2016 GITSTEIN. All rights reserved.
//

import UIKit

class MenuVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var arrayMenuItems:NSArray!
    var arrayMenuImages:NSArray!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        arrayMenuItems = ["Home", "Settings"]
        arrayMenuImages = [UIImage(named: "IconHome")!, UIImage(named: "IconSettings")!]

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return arrayMenuItems.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CELLMENU") as! MenuTVC
        cell.lblMenuItems.text = arrayMenuItems[indexPath.row] as? String
        cell.imgViewMenuItems.image = arrayMenuImages[indexPath.row] as? UIImage
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        if indexPath.row == 0 {
            appDelegate.centerViewController = appDelegate.drawerHomeViewController()
        } else if indexPath.row == 1 {
            appDelegate.centerViewController = appDelegate.drawerSettingsViewController()
        }
        
    }

   
    
}

