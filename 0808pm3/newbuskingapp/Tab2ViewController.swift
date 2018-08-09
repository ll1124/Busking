//
//  Tab2ViewController.swift
//  newbuskingapp
//
//  Created by 방문사용자 on 06/08/2018.
//  Copyright © 2018 방문사용자. All rights reserved.
//

import UIKit

class Tab2ViewController: UIViewController {

    
    @IBOutlet weak var favoriteView: UIView!
    @IBOutlet weak var hotView: UIView!
    @IBOutlet weak var segmented: UISegmentedControl!
    
    @IBAction func segment(_ sender: Any) {
        if segmented.selectedSegmentIndex == 0 {
            self.view.bringSubview(toFront: hotView)
        }
        else {
            self.view.bringSubview(toFront: favoriteView)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
