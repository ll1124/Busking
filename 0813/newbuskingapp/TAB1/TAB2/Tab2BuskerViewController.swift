//
//  Tab2BuskerViewController.swift
//  newbuskingapp
//
//  Created by 방문사용자 on 2018. 8. 8..
//  Copyright © 2018년 방문사용자. All rights reserved.
//

import UIKit
import Firebase

class Tab2BuskerViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate{
  
    @IBOutlet weak var tab2BuskerTable: UITableView!
    @IBOutlet weak var tab2SearchBar: UISearchBar!
   //배열
    var buskerArray = [BuskersInfo]() //to setUpBuskers
    var currentBuskerArray = [BuskersInfo]() //update table

    
    private func setUpBuskers(){
        
        buskerArray.append(BuskersInfo(name:"김안경",hashtag:"#Solo, #Ballad", heartCount:10, image:"10cm",like: .x))
        buskerArray.append(BuskersInfo(name:"김고양",hashtag:"#Solo, #Piano", heartCount:18, image:"cat",like: .x))
        buskerArray.append(BuskersInfo(name:"GU",hashtag:"#Duet, #Guitar", heartCount:07, image: "gu", like: .x))
        buskerArray.append(BuskersInfo(name:"정준일",hashtag:"#Solo, #Ballad", heartCount:10, image: "jung", like: .x))
        buskerArray.append(BuskersInfo(name:"OH",hashtag:"#Band", heartCount:65, image:"oh",like: .x))
        buskerArray.append(BuskersInfo(name:"박로이",hashtag:"#Solo, #Folk", heartCount:30, image: "roy", like: .x))
        buskerArray.append(BuskersInfo(name:"선우정",hashtag:"Piano, #Ballad", heartCount:20, image: "sun", like: .x))
        buskerArray.append(BuskersInfo(name:"노서우",hashtag:"#Guitar, #Dance", heartCount:13, image: "profile", like: .x))
        
        currentBuskerArray = buskerArray
        
    }
    


    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpBuskers()
        setUpSearchBar()
        
//
//        func retrieveusers(){
//            let ref = FIRDatabase.database().
//        }
//

        // Do any additional setup after loading the view.
    }


    
    //search
    private func setUpSearchBar(){
        tab2SearchBar.delegate = self
        
    }
    
    //Table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return currentBuskerArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! Tab2BuskerTableViewCell
        
        let busker = currentBuskerArray[indexPath.row]
        cell.busker = busker
        cell.Name.text = busker.name
        cell.Hashtag.text = busker.hashtag
        cell.HeartCount.text = "\(busker.heartCount)"
        cell.BuskerImage.image = UIImage(named:busker.image)

        
        return cell
    }
    
    
    func tableView(_tableView: UITableViewCell, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    //searchbar
    func searchBar (_ searchBar: UISearchBar, textDidChange searchText: String) {
        guard !searchText.isEmpty else{
            currentBuskerArray = buskerArray
          tab2BuskerTable.reloadData()
            return
        }
        currentBuskerArray = buskerArray.filter({busker -> Bool in
            busker.name.lowercased().contains(searchText.lowercased())
            
        })
      tab2BuskerTable.reloadData()
    }
    
    
    func searchBar (_ searchBar: UISearchBar, selectedScopeButtonIndexDidChange selectedScope: Int){
        switch selectedScope {
        case 0:
            currentBuskerArray = buskerArray
            
        case 1:
            currentBuskerArray = buskerArray.filter({ busker -> Bool in busker.like == LikeType.o})
            
//            func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//                guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as? Tab2BuskerTableViewCell else{
//                    return UITableViewCell()
//                }
//
//                if currentBuskerArray[indexPath.row].like == "o" {
//                    likeBuskers.append(items)
//                }
//                return cell
//            }
//             currentBuskerArray = likeBuskers
//
        default : break
        }
        tab2BuskerTable.reloadData()
        }}


    
    class BuskersInfo {
        let name : String
        let hashtag : String
        var heartCount : Int
        let image : String
        var like : LikeType
  
        
        init(name:String, hashtag: String, heartCount: Int, image: String, like: LikeType){
            self.name = name
            self.hashtag = hashtag
            self.heartCount = heartCount
            self.image = image
            self.like = like
        }
        
}
enum LikeType : String {
    case o = "o"
    case x = "x"
}
    


//    enum HeartSelect : String{
//        case allBusker = "All"
//        case selectedBusker = "Favorite"
//    }
    
    //heartfunction

