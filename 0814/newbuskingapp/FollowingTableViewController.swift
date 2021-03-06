import UIKit

struct Following {
    var busker: String
    var hashtag: String
    var followers: String
    var profileImage: String
}


class FollowingTableViewController: UITableViewController {
    
    var data = [
        Following(busker: "정준일", hashtag: "#Piano #이별노래 #Ballad #solo", followers: "83", profileImage: "jung"),
        Following(busker: "길구봉구", hashtag: "#Duo #Folk #Ballad", followers: "605", profileImage: "gu"),
        Following(busker: "김로이", hashtag: "#Ballad #Drama #OST", followers: "345", profileImage: "roy"),
        Following(busker: "혁오", hashtag: "#인디밴드 #독특한 음색", followers: "22", profileImage: "oh"),
        Following(busker: "심재면", hashtag: "#Guitar #Solo", followers: "3", profileImage: "profile")
        
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


