//
//  Page2_3_ViewController.swift
//  HW12
//
//  Created by Chih-Yu Ko on 2018/5/11.
//  Copyright © 2018 Chih-Yu Ko. All rights reserved.
//

import UIKit

class Page2_3_ViewController: UIViewController {

    @IBOutlet weak var textName: UITextField!
    @IBOutlet weak var textBirthday: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonDonePushed(_ sender: Any) {
        print("Push notification")

        if let name=textName.text {
            NotificationCenter.default.post(name: Notification.Name(rawValue: "NAME_SET"), object: nil, userInfo: ["name":name])
        }
        
        if let birthday=textBirthday.text {
            NotificationCenter.default.post(name: Notification.Name(rawValue: "BIRTHDAY_SET"), object: nil, userInfo: ["birthday":birthday])
        }
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
