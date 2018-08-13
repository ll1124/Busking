import UIKit

class FollowingTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detailVC = segue.destination as? BuskerProfileViewController,
            let indexPath = tableView.indexPathForSelectedRow {
            let selectedBusker = following[indexPath.row]
            detailVC.buskerprofile = selectedBusker
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 44
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        var headerLabel: String!
        headerLabel = "Following"
        
        return headerLabel
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FollowingTableViewCell", for: indexPath) as! FollowingTableViewCell
        
        let item = following[indexPath.row]
        
        cell.name.text = item.name
        cell.hashtag.text = item.hashtag
        cell.heartCount.text = "\(item.heartCount)"
        cell.buskerImage.image = UIImage(named: item.profileImage)
        
        return cell
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return following.count
    }
    
}

