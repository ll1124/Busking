//
//  Tab2BuskerViewController.swift
//  newbuskingapp
//
//  Created by 방문사용자 on 2018. 8. 8..
//  Copyright © 2018년 방문사용자. All rights reserved.
//

import UIKit

class Tab2BuskerViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate{
  
    @IBOutlet weak var tab2BuskerTable: UITableView!
    @IBOutlet weak var tab2SearchBar: UISearchBar!
   
    var buskerArray = [BuskerInfo]() //to setUpBuskers
    var currentBuskerArray = [BuskerInfo]() //update table
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpBuskers()
        setUpSearchBar()

        // Do any additional setup after loading the view.
    }
    
    private func setUpBuskers(){
        buskerArray.append(BuskerInfo(name:"김안경",hashtag:"#Solo, #Ballad", heartCount:10, image:"10cm"))
        buskerArray.append(BuskerInfo(name:"김고양",hashtag:"#Solo, #Piano", heartCount:10, image:"cat"))
        buskerArray.append(BuskerInfo(name:"GU",hashtag:"#Duet, #Guitar", heartCount:10, image: "gu"))
        buskerArray.append(BuskerInfo(name:"정준일",hashtag:"#Solo, #Ballad", heartCount:10, image: "jung"))
        buskerArray.append(BuskerInfo(name:"OH",hashtag:"#Band", heartCount:10, image:"oh"))
        buskerArray.append(BuskerInfo(name:"박로이",hashtag:"#Solo, #Folk", heartCount:10, image: "roy"))
        buskerArray.append(BuskerInfo(name:"선우정",hashtag:"Piano, #Ballad", heartCount:10, image: "sun"))
        buskerArray.append(BuskerInfo(name:"노서우",hashtag:"#Guitar, #Dance", heartCount:10, image: "profile"))
        
        currentBuskerArray = buskerArray

    }
    //search
    private func setUpSearchBar(){
        searchBar.delegate = self
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
        cell.HeartCount.text = "\(currentBuskerArray[indexPath.row].heartCount)"
        cell.BuskerImage.image = UIImage(named:currentBuskerArray[indexPath.row].image)

        
        return cell
    }
    
    
    func tableView(_tableView: UITableViewCell, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    //searchbar
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        currentBuskerArray = buskerArray.filter({busker -> Bool in
            guard let text = searchBar.text else {return false}
            return busker.name.constains(text)
            
        })
        table.reloadData()
    }
    func searchBar(_ searchBar: UISearchBar, selectedScopeButtonIndexDidChange selectedScope: Int){
        
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
    
    
    
    
    
    
    
    
    
    
    
    
    
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
