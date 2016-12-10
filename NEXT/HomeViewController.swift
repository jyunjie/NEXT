//
//  HomeViewController.swift
//  NEXT
//
//  Created by Sheena Moh on 10/12/2016.
//  Copyright © 2016 JJ. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    
    @IBOutlet weak var eventTableView: UITableView!
    let eventArray = ["TM RE-HACK", "AngelHack"];
    var iconArray = [UIImage]();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let image1 = UIImage(named: "rehack2"), let image2 = UIImage(named: "fuze"), let image3 = UIImage(named: "jazz-1") {
            self.iconArray += [image1, image2, image3]
        }
        
        self.eventTableView.reloadData()
        // Do any additional setup after loading the view.
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("eventcell") as! EventListTableViewCell
        //cell.eventTitle.text = self.eventArray[indexPath.row];
        cell.icon.image = self.iconArray[indexPath.row];
        
        return cell;
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.iconArray.count;
    }
    
    /*
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let cell = tableView.cellForRowAtIndexPath(indexPath) as! EventListTableViewCell
        cell.contentView.backgroundColor = UIColor.redColor()
        
        if(cell.selected){
            cell.contentView.backgroundColor = UIColor.redColor()
        }else{
            cell.backgroundColor = UIColor.clearColor()
        } 
    }
     */
    
}
