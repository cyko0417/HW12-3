//
//  Page2_1_ViewController.swift
//  HW12
//
//  Created by Chih-Yu Ko on 2018/5/11.
//  Copyright © 2018 Chih-Yu Ko. All rights reserved.
//

import UIKit

class Page2_1_ViewController: UIViewController {

    @IBOutlet weak var labelName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        NotificationCenter.default.addObserver(self, selector: #selector(self.updateName), name: NSNotification.Name(rawValue: "NAME_SET"), object: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func updateName(notify: Notification) {
        print("Get notification")
        let userInfo=notify.userInfo
        if (userInfo!["name"] != nil) {
            let name=userInfo!["name"] as! String
            labelName.text="你的名字是： \(name)"
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
