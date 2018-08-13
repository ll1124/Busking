//
//  DataCenter.swift
//  newbuskingapp
//
//  Created by 방문사용자 on 2018. 8. 8..
//  Copyright © 2018년 방문사용자. All rights reserved.
//

import Foundation

struct PlayInfo {
    var time : String
    var place : String
    var artist : String
    var heartCount: Int
}

var plays = [
    PlayInfo(time: "12:00", place : "홍대 앞 패션 거리", artist: "김희준", heartCount: 11),
    PlayInfo(time: "12:30", place : "홍대 걷고싶은 거리", artist: "GG", heartCount: 15),
    PlayInfo(time: "13:00", place : "혜화역 1번 출구", artist: "이형진", heartCount: 13),
    PlayInfo(time: "15:00", place : "신촌역 3번 출구", artist: "김혜진", heartCount: 5),
    PlayInfo(time: "15:20", place : "홍대 가차샵 앞", artist: "김가영", heartCount: 7),
    PlayInfo(time: "16:00", place : "경의선 책거리", artist: "박희선", heartCount: 8),
    PlayInfo(time: "18:00", place : "홍대 앞 패션 거리", artist: "uu", heartCount: 26),
    PlayInfo(time: "18:10", place : "경의선 책거리", artist: "hehy", heartCount: 9)
]

struct Busker {
    var name: String
    var hashtag: String
    var heartCount: Int
    var profileImage: String
    var introduce: String
    var id: String
    var followings: Int
}

struct Hashtag {
    var hashtags: String
}

var piano = Hashtag(hashtags: "#Piano")
var ballad = Hashtag(hashtags: "#Ballad")
var solo = Hashtag(hashtags: "#Solo")
var duo = Hashtag(hashtags: "#Duo")
var guitar = Hashtag(hashtags: "#Guitar")
var indie = Hashtag(hashtags: "#인디")
var band = Hashtag(hashtags: "#Band")
var folk = Hashtag(hashtags: "#Folk")
var muse = Hashtag(hashtags: "#독특한 음색")
var lyrics = Hashtag(hashtags: "#독특한 가사")
var drama = Hashtag(hashtags: "#Drama")
var ost = Hashtag(hashtags: "#OST")
var goodbye = Hashtag(hashtags: "이별노래")
var dance = Hashtag(hashtags: "Dance")
var singasong = Hashtag(hashtags: "싱어송라이터")




var jji = Busker(name: "정준일", hashtag: "#Piano #Ballad #Solo", heartCount: 183, profileImage: "jung", introduce: "이별노래 전문 버스커 정준일입니다", id: "jung_ji_Bal", followings: 54)
var gu = Busker(name: "GU", hashtag: "#Duo #Folk #Ballad", heartCount: 105, profileImage: "gu", introduce: "신곡 '이별' 많이 사랑해주세요", id: "박", followings: 45)
var roy = Busker(name: "박로이", hashtag: "Ballad #Drama #OST", heartCount: 345, profileImage: "roy", introduce: "발라드 가수 박로이입니다", id: "Bus_king_roy", followings: 27)
var oh = Busker(name: "OH", hashtag: "인디 #Band #독특한 음색", heartCount: 222, profileImage: "oh", introduce: "홍대에서 공연하는 인디밴드 OH입니다", id: "Indie_oh", followings: 63)
var sim = Busker(name: "심재면", hashtag: "#Guitar #Solo", heartCount: 311, profileImage: "profile", introduce: "기타치며 노래합니다", id: "Sim_Sim_98", followings: 34)
var cat = Busker(name: "김고양", hashtag: "#Piano #Ballad #Solo", heartCount: 823, profileImage: "cat", introduce: "홍대 공연 많이와주세요!", id: "Cat_Kim", followings: 12)
var glasses = Busker(name: "김안경", hashtag: "Folk #Ballad #Solo #Dance", heartCount: 605, profileImage: "10cm", introduce: "솔로 포크발라드 버스킹 공연합니다", id: "Gla_sses", followings: 32)
var sun = Busker(name: "선우정", hashtag: "#싱어송라이터 #독특한 가사", heartCount: 234, profileImage: "sun", introduce: "신촌에서 공연해요!", id: "Sun_88", followings: 42)
var roh = Busker(name: "노서우", hashtag: "#싱어송라이터 #Guitar", heartCount: 143, profileImage: "profile", introduce: "기타 작곡하고 노래도 하는 노서우입니다", id: "Rohsw_12", followings: 23)

var buskerList: [Busker] = [jji, gu]

var favorites = [cat, glasses, roy, sun, roh]

var follower = [jji, gu, roy, oh, sim]

var following = [cat, glasses, sim, sun, oh, roh, gu, roy, jji]

struct FollowInfo {
    var busker: Busker
    var startDate: Date
    var memo: String
}

class BuskerInfo{
    let name : String
    let hashtag : String
    let heartCount : Int
    let image : String
    
    
    init(name:String, hashtag: String, heartCount: Int, image: String){
        self.name = name
        self.hashtag = hashtag
        self.heartCount = heartCount
        self.image = image
    }
    
}

    //배열
    var buskerArray = [BuskerInfo]() //to setUpBuskers
    var currentBuskerArray = [BuskerInfo]() //update table
        
        // Do any additional setup after loading the view.

    private func setUpBuskers(){
        
        buskerArray.append(BuskerInfo(name:"김안경",hashtag:"#Solo, #Ballad", heartCount:10, image:"10cm"))
        buskerArray.append(BuskerInfo(name:"김고양",hashtag:"#Solo, #Piano", heartCount:18, image:"cat"))
        buskerArray.append(BuskerInfo(name:"GU",hashtag:"#Duet, #Guitar", heartCount:07, image: "gu"))
        buskerArray.append(BuskerInfo(name:"정준일",hashtag:"#Solo, #Ballad", heartCount:10, image: "jung"))
        buskerArray.append(BuskerInfo(name:"OH",hashtag:"#Band", heartCount:65, image:"oh"))
        buskerArray.append(BuskerInfo(name:"박로이",hashtag:"#Solo, #Folk", heartCount:30, image: "roy"))
        buskerArray.append(BuskerInfo(name:"선우정",hashtag:"Piano, #Ballad", heartCount:20, image: "sun"))
        buskerArray.append(BuskerInfo(name:"노서우",hashtag:"#Guitar, #Dance", heartCount:13, image: "profile"))
        
        currentBuskerArray = buskerArray
        
    }
    


    

    





