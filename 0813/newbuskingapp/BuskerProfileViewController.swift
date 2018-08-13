//
//  BuskerProfileViewController.swift
//  newbuskingapp
//
//  Created by 방문사용자 on 2018. 8. 12..
//  Copyright © 2018년 방문사용자. All rights reserved.
//

import UIKit

class BuskerProfileViewController: UIViewController {

    @IBOutlet weak var introduceLabel: UILabel!
    @IBOutlet weak var followingLabel: UILabel!
    @IBOutlet weak var followerLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var buskerImage: UIImageView!
    
    var buskerprofile: Busker!
    
    override func viewWillAppear(_ animated: Bool) {
        idLabel.text = buskerprofile.id
        nameLabel.text = buskerprofile.name
        introduceLabel.text = buskerprofile.introduce
        followerLabel.text = "\(buskerprofile.heartCount)"
        followingLabel.text = "\(buskerprofile.followings)"
        buskerImage.image = UIImage(named: buskerprofile.profileImage)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreate*d.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
