//
//  EventListTableViewCell.swift
//  NEXT
//
//  Created by Sheena Moh on 10/12/2016.
//  Copyright © 2016 JJ. All rights reserved.
//

import UIKit

class EventListTableViewCell: UITableViewCell {
    
    @IBOutlet weak var eventTitle: UILabel!
    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var descTextView: UITextView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        icon.layer.borderColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1.0).CGColor
        icon.layer.borderWidth = 2
        
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
