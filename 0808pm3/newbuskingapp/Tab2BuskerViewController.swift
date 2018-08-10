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
   //배열
    var buskerArray = [BuskerInfo]() //to setUpBuskers
    var currentBuskerArray = [BuskerInfo]() //update table
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpBuskers()
        setUpSearchBar()

        // Do any additional setup after loading the view.
    }
    
    private func setUpBuskers(){
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! Tab2BuskerTableViewCell
        let item = favorites[indexPath.row]
        
        cell.Name.text = item.name
        cell.Hashtag.text = item.hashtag
        cell.HeartCount.text = "\(item.heartcount)"
        cell.BuskerImage.image = item.profileImage
        
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
        cell.HeartCount.text = "\(currentBuskerArray[indexPath.row].heartCount)"
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
