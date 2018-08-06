//
//  FavoriteTableViewCell.swift
//  sy
//
//  Created by 방문사용자 on 2018. 8. 6..
//  Copyright © 2018년 LD. All rights reserved.
//

import UIKit

class FavoriteTableViewCell: UITableViewCell {

    
    @IBOutlet weak var followerLabel: UILabel!
    @IBOutlet weak var buskerLabel: UILabel!
    @IBOutlet weak var buskerimage: UIImageView!
    @IBOutlet weak var hashtagLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
