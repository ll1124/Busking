//
//  Tab2BuskerTableViewCell.swift
//  newbuskingapp
//
//  Created by 방문사용자 on 2018. 8. 8..
//  Copyright © 2018년 방문사용자. All rights reserved.
//

import UIKit


var heartInt = 0
    
    class Tab2BuskerTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var Name: UILabel!
    @IBOutlet weak var Hashtag: UILabel!
    //heart
    @IBOutlet weak var HeartButton: UIButton!
    @IBOutlet weak var HeartCount: UILabel!
    
    
    
    @IBOutlet weak var BuskerImage: UIImageView!
    @IBAction func HeartClick(_ sender: UIButton) {
        if sender.isSelected == true {
            heartInt += 1
            HeartCount.text = String(heartInt)
        }else{
            heartInt -= 1
            HeartCount.text = String(heartInt)
        }
        
        
        
        
        
        
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        HeartCount.text = String(heartInt)
    }
    
    
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
}
