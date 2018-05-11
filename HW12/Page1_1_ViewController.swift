//
//  Page1_1_ViewController.swift
//  HW12
//
//  Created by Chih-Yu Ko on 2018/5/11.
//  Copyright © 2018 Chih-Yu Ko. All rights reserved.
//

import UIKit

class Page1_1_ViewController: UIViewController {

    @IBOutlet weak var textName: UITextField!
    @IBOutlet weak var textPassword: UITextField!
    @IBOutlet weak var buttonWelcome: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if (textName.text==nil || textName.text!.isEmpty) {
            return false;
        }
        
        return (textPassword.text=="12345")
    }
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let viewController=segue.destination as! Page1_2_ViewController
        viewController.name=textName.text!
    }
    
    
    @IBAction func unwindToPage1_1(_ sender: UIStoryboardSegue) {
        let sourceViewController = sender.source as! Page1_2_ViewController
        // Use data from the view controller which initiated the unwind segue
        textName.text=sourceViewController.name
        textPassword.text=""
        buttonWelcome.isEnabled=false
    }
}
