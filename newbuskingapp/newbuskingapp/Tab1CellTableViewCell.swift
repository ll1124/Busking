//
//  Tab1CellTableViewCell.swift
//  newbuskingapp
//
//  Created by 방문사용자 on 06/08/2018.
//  Copyright © 2018 방문사용자. All rights reserved.
//

import UIKit

struct PlayInfo{
    var time : String
    var place : String
    var artist : String
    var heartCount : Int
}
var plays = [
    PlayInfo(time: "12:00", place : "홍대 앞 패션 거리", artist: "김희준", heartCount: 11),
    PlayInfo(time: "12:30", place : "홍대 걷고싶은 거리", artist: "GG", heartCount: 15),
    PlayInfo(time: "13:00", place : "혜화역 1번 출구", artist: "이형진", heartCount: 13),
    PlayInfo(time: "15:00", place : "신촌역 3번 출구", artist: "김혜진", heartCount: 7),
    PlayInfo(time: "15:20", place : "홍대 가차샵 앞", artist: "김가영", heartCount: 19),
    PlayInfo(time: "16:00", place : "경의선 책거리", artist: "박희선", heartCount: 21),
    PlayInfo(time: "18:00", place : "홍대 앞 패션 거리", artist: "uu", heartCount: 5),
    PlayInfo(time: "18:10", place : "경의선 책거리", artist: "hehy", heartCount: 16)
]

class Tab1CellTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
