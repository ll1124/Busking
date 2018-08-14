//
//  Tab1-2TableViewCell.swift
//  newbuskingapp
//
//  Created by 방문사용자 on 2018. 8. 13..
//  Copyright © 2018년 방문사용자. All rights reserved.
//

import UIKit

class Tab1_2TableViewCell: UITableViewCell {

    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var artistLabel: UILabel!
    @IBOutlet weak var placeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
