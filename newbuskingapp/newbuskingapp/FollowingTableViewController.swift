import UIKit

struct Following {
    var busker: String
    var hashtag: String
    var followers: String
    var profileImage: String
}


class FollowingTableViewController: UITableViewController {
    
    var data = [
        Following(busker: "김고양", hashtag: "#Piano #Ballad #solo", followers: "43", profileImage: "cat"),
        Following(busker: "김안경", hashtag: "#Folk #Ballad #Dance #solo", followers: "121", profileImage: "10cm"),
        Following(busker: "김로이", hashtag: "#Ballad #Drama #OST", followers: "235", profileImage: "roy"),
        Following(busker: "선우정", hashtag: "#싱어송라이터 #독특한 가사", followers: "45", profileImage: "sun"),
        Following(busker: "노서우", hashtag: "#싱어송라이터 #기타", followers: "143", profileImage: "profile")
        
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FollowingTableViewCell", for: indexPath) as! FollowingTableViewCell
        
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


