import UIKit

struct Following {
    var busker: String
    var hashtag: String
    var followers: String
    var profileImage: String
}


class FollowingTableViewController: UITableViewController {
    
    var data = [
        Following(busker: "김고양", hashtag: "#Piano #Ballad #solo", followers: "8231", profileImage: "cat"),
        Following(busker: "Black", hashtag: "#Indie #Guitar #Duo", followers: "121", profileImage: "black"),
        Following(busker: "김안경", hashtag: "##Folk #Ballad #Dance #solo", followers: "5096", profileImage: "10cm"),
        Following(busker: "오혁", hashtag: "#Band #Indie #Group #독특한 음색", followers: "45", profileImage: "oh"),
        Following(busker: "최백연", hashtag: "#싱어송라이터 #젬베", followers: "143", profileImage: "profile")
        
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


