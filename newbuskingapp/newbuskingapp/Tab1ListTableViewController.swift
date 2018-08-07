//
//  Tab1ListTableViewController.swift
//  newbuskingapp
//
//  Created by 방문사용자 on 07/08/2018.
//  Copyright © 2018 방문사용자. All rights reserved.
//

import UIKit
struct PlayInfo{
    var time : String
    var place : String
    var artist : String
    var heartCount : Int
}


class Tab1ListTableViewController: UITableViewController, UITableViewDataSource{

    
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
    
    func tableView(_tableView: UITableView,
                   numberOfRowsInSection section : Int)-> Int {
        return plays.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell { let cell = tableView.dequeueReusableCell(withIdentifier: "Tab1TableViewCell", for: indexPath) as! Tab1TableViewCell
        
        
        let item = plays[indexPath.row]
        
        cell.time.text = item.time
        cell.placeLabel.text = item.place
        
        
        return cell
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
