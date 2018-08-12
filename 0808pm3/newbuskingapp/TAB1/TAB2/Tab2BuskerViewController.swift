//
//  Tab2BuskerViewController.swift
//  newbuskingapp
//
//  Created by 방문사용자 on 2018. 8. 8..
//  Copyright © 2018년 방문사용자. All rights reserved.
//

import UIKit
import FirebaseDatabase

class Tab2BuskerViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate{
  
    @IBOutlet weak var tab2BuskerTable: UITableView!
    @IBOutlet weak var tab2SearchBar: UISearchBar!
    
    @IBAction func post(_ sender: Any) {
    }
    
    var ref: DatabaseReference!
    var databaseHandle : DatabaseHandle?
    var heartInt = [Int]()
    
    var buskerArray = [BuskerInfo]() //to setUpBuskers
    var currentBuskerArray = [BuskerInfo]() //update table
    
    
    //ViewDidRoad 여기에

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpBuskers()
        setUpSearchBar()
        
       
       ref = Database.database().reference()
        
        
        
        databaseHandle = ref?.child("HeartCount").observe(.childAdded, with: { (snapshot) in
                    let count = snapshot.value as? Int
            
                if let actualCount = count {
                    self.heartInt.append(actualCount)
                    
                    self.tab2BuskerTable.reloadData()
                
                    
                    
            
                    
            }
            
        })

     
    }
    
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
    
    
    //search
    private func setUpSearchBar(){
        tab2SearchBar.delegate = self
        
    }
    
    //Table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return currentBuskerArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as? Tab2BuskerTableViewCell else{
            return UITableViewCell()
        }
        
        cell.Name.text = currentBuskerArray[indexPath.row].name
        cell.Hashtag.text = currentBuskerArray[indexPath.row].hashtag
        cell.HeartCount.text = "\(heartInt[indexPath.row])"
        cell.BuskerImage.image = UIImage(named:currentBuskerArray[indexPath.row].image)
        
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
    
//    enum HeartSelect : String{
//        case allBusker = "All"
//        case selectedBusker = "Favorite"
//    }
    
    //heartfunction

}
