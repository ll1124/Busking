import UIKit

struct Favorite {
    var busker: String
    var hashtag: String
    var followers: String
    var profileImage: String
}


class FavoriteTableViewController: UITableViewController {
    
    var data = [
        Favorite(busker: "김고양", hashtag: "#Piano #Ballad #solo", followers: "43", profileImage: "cat"),
        Favorite(busker: "김안경", hashtag: "#Folk #Ballad #Dance #solo", followers: "121", profileImage: "10cm"),
        Favorite(busker: "김로이", hashtag: "#Ballad #Drama #OST", followers: "235", profileImage: "roy"),
        Favorite(busker: "선우정", hashtag: "#싱어송라이터 #독특한 가사", followers: "45", profileImage: "sun"),
        Favorite(busker: "노서우", hashtag: "#싱어송라이터 #기타", followers: "143", profileImage: "profile")
        
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

}

