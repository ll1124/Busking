//
//  Tab1ListTableViewController.swift
//  busking app
//
//  Created by 방문사용자 on 2018. 8. 6..
//  Copyright © 2018년 kr.ac.korea. All rights reserved.
//

import UIKit

class Tab1ListTableViewController: UITableViewController {


    
    struct PlayInfo{
        
        var time : String
        var place : String
        var artist : String
        var heartCount : Int
        
    }
    var list = [
        PlayInfo(time: "12:00", place: "홍대 앞 걷고 싶은 거리", artist: "김원준", heartCount: 11),
        PlayInfo(time: "12:50", place: "홍대 패션 거리", artist: "박희준", heartCount: 11),
        PlayInfo(time: "13:00", place: "경의선 책거리", artist: "김혜진", heartCount: 11),
        PlayInfo(time: "14:00", place: "홍대 가차샵 앞", artist: "이명구", heartCount: 11),
        PlayInfo(time: "16:00", place: "혜화역 1번 출구", artist: "HO", heartCount: 11),
        PlayInfo(time: "12:00", place: "홍대 패션 거리", artist: "re", heartCount: 11),
        PlayInfo(time: "12:00", place: "신촌역 2번 출구", artist: "HAPPY", heartCount: 11),
        PlayInfo(time: "12:00", place: "경의선 책거리", artist: "문아아", heartCount: 11)
    ]
    
    
    
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
