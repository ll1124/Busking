//
//  PersonalTableViewController.swift
//  newbuskingapp
//
//  Created by 방문사용자 on 2018. 8. 13..
//  Copyright © 2018년 방문사용자. All rights reserved.
//

import UIKit

class PersonalTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PersonalTableViewCell", for: indexPath) as! PersonalTableViewCell
        
        return cell
    }

}
