//
//  Page1_2_ViewController.swift
//  HW12
//
//  Created by Chih-Yu Ko on 2018/5/11.
//  Copyright © 2018 Chih-Yu Ko. All rights reserved.
//

import UIKit

class Page1_2_ViewController: UIViewController {

    var name: String=""
    
    @IBOutlet weak var labelWelcome: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        labelWelcome.text="歡迎 \(name)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        name="已經歡迎過囉"
    }

}
