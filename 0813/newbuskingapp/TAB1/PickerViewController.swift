//
//  PickerViewController.swift
//  FirebaseAuth
//
//  Created by 방문사용자 on 2018. 8. 13..
//

import UIKit

class PickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    var place = 0
    var label : String = ""
    
    @IBOutlet weak var Seoul: UILabel!
    @IBOutlet weak var PickerTitle: UILabel!
    @IBOutlet weak var PlacePicker: UIPickerView!
    
    @IBOutlet weak var Choose: UIButton!
    //선택버튼
    @IBAction func ChooseButton(_ sender: Any) {
        dismiss(animated: true)
    
        }

    let places = ["종로구", "중구" ,"용산구", "성동구", "광진구", "동대문구", "중랑구", "성북구", "강북구", "도봉구", "노원구", "은평구", "서대문구", "마포구", "양천구", "강서구", "구로구", "금천구", "영등포구", "동작구", "관악구", "서초구", "강남구", "송파구", "강동구"]
    
    //
    override func viewDidLoad() {
        super.viewDidLoad()


       
    }

   override func didReceiveMemoryWarning() {
       super.didReceiveMemoryWarning()
   }






    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return places[row]
}

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return places.count
}
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    label = places[row]
}
}
