//
//  Tab1TableViewCell.swift
//  newbuskingapp
//
//  Created by 방문사용자 on 06/08/2018.
//  Copyright © 2018 방문사용자. All rights reserved.
//

import UIKit


    @IBOutlet weak var time: UILabel!
    @IBOutlet weak var place: UILabel!
    @IBOutlet weak var artist: UILabel!
    @IBOutlet weak var heartButton: UIButton!
    @IBOutlet weak var heartCount: UILabel!
    



    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
