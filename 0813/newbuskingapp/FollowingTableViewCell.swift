//
//  FollowingTableViewCell.swift
//  newbuskingapp
//
//  Created by 방문사용자 on 2018. 8. 12..
//  Copyright © 2018년 방문사용자. All rights reserved.
//

import UIKit

class FollowingTableViewCell: UITableViewCell {

    @IBOutlet weak var hashtag: UILabel!
    @IBOutlet weak var heartCount: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var buskerImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
