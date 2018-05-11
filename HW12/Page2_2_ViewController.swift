//
//  Page2_2_ViewController.swift
//  HW12
//
//  Created by Chih-Yu Ko on 2018/5/11.
//  Copyright © 2018 Chih-Yu Ko. All rights reserved.
//

import UIKit

class Page2_2_ViewController: UIViewController {
    @IBOutlet weak var labelBirthday: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        NotificationCenter.default.addObserver(self, selector: #selector(self.updateBirthday), name: NSNotification.Name(rawValue: "BIRTHDAY_SET"), object: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func updateBirthday(notify: Notification) {
        print("Get notification")
        let userInfo=notify.userInfo
        if (userInfo!["birthday"] != nil) {
            let birthday=userInfo!["birthday"] as! String
            labelBirthday.text="你的生日是： \(birthday)"
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
