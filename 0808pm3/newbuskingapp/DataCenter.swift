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


var buskerList: [Busker] = []

var jji = Busker(name: "정준일", hashtag: "#Piano #Ballad #Solo #이별노래", heartCount: 83, profileImage: "jung")
var gu = Busker(name: "길구봉구", hashtag: "#Duo #Folk #Ballad", heartCount: 105, profileImage: "gu")
var roy = Busker(name: "김로이", hashtag: "Ballad #Drama #OST", heartCount: 345, profileImage: "roy")
var oh = Busker(name: "혁오", hashtag: "인디 #Band #독특한 음색", heartCount: 22, profileImage: "oh")
var sim = Busker(name: "심재면", hashtag: "#Guitar #Solo", heartCount: 3, profileImage: "profile")
var cat = Busker(name: "김고양", hashtag: "#Piano #Ballad #Solo", heartCount: 823, profileImage: "cat")
var glasses = Busker(name: "김안경", hashtag: "Folk #Ballad #Solo #Dance", heartCount: 605, profileImage: "10cm")
var sun = Busker(name: "선우정", hashtag: "#싱어송라이터 #독특한 가사", heartCount: 234, profileImage: "sun")
var roh = Busker(name: "노서우", hashtag: "#싱어송라이터 #Guitar", heartCount: 143, profileImage: "profile")

var favorites = [cat, glasses, roy, sun, roh]

var followings = [jji, gu, roy, oh, sim]

struct FollowInfo {
    var busker: Busker
    var startDate: Date
    var memo: String
}


