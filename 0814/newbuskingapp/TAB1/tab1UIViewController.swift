//
//  tab1UIViewController.swift
//  newbuskingapp
//
//  Created by 방문사용자 on 06/08/2018.
//  Copyright © 2018 방문사용자. All rights reserved.
//

import UIKit

class tab1UIViewController: UIViewController {
    
    @IBOutlet weak var placeshow: UILabel!
    var label : String = ""
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
    placeshow.text = label

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
