//
//  Tab2BuskerTableViewCell.swift
//  newbuskingapp
//
//  Created by 방문사용자 on 2018. 8. 8..
//  Copyright © 2018년 방문사용자. All rights reserved.
//

import UIKit

class Tab2BuskerTableViewCell: UITableViewCell {
    
    var heartInt = 0


    @IBOutlet weak var Name: UILabel!
    @IBOutlet weak var Hashtag: UILabel!
    //heart
    @IBOutlet weak var HeartButton: UIButton!
    @IBOutlet weak var HeartCount: UILabel!
    @IBOutlet weak var BuskerImage: UIImageView!
    @IBAction func HeartClick(_ sender: UIButton) {
                if sender.currentImage == #imageLiteral(resourceName: "blackheart"){
                    heartInt += 1
                    HeartCount.text = String(heartInt)
                }else{
                    heartInt -= 1
                }
     
    
    
    
        func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
            HeartCount.text = String(heartInt)
    }

    
    
    
        func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
}
