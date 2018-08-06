//
//  FavoriteTableViewController.swift
//  sy
//
//  Created by 방문사용자 on 2018. 8. 6..
//  Copyright © 2018년 LD. All rights reserved.
//

import UIKit

struct Favorite {
    var busker: String
    var hashtag: String
    var followers: String
    var profileImage: String
}


class FavoriteTableViewController: UITableViewController {

    var data = [
        Favorite(busker: "김고양", hashtag: "#Piano #Ballad #solo", followers: "43", profileImage: "고양이"),
        Favorite(busker: "김안경", hashtag: "#Folk #Ballad #Dance #solo", followers: "121", profileImage: "10cm"),
        Favorite(busker: "김로이", hashtag: "#Ballad #Drama #OST", followers: "235", profileImage: "로이킴"),
        Favorite(busker: "선우정", hashtag: "#싱어송라이터 #독특한 가사", followers: "45", profileImage: "선우정아"),
        Favorite(busker: "노서우", hashtag: "#싱어송라이터 #기타", followers: "143", profileImage: "프로필")
        
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }

   override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FavoriteTableViewCell", for: indexPath) as! FavoriteTableViewCell
        
        let item = data[indexPath.row]
        
        cell.buskerLabel.text = item.busker
        cell.hashtagLabel.text = item.hashtag
        cell.followerLabel.text = item.followers
        cell.buskerimage.image = UIImage(named: item.profileImage)
        
        return cell
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return data.count
    }

    /*

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
