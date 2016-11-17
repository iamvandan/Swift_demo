//
//  LoginViewController.swift
//  Swift_Demo_1
//
//  Created by tnex on 17/11/16.
//  Copyright © 2016 TechNex Technologies Pvt Ltd. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

   
    @IBOutlet weak var login_button: UIButton!
    @IBOutlet weak var password_textField: UITextField!
    @IBOutlet weak var username_textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func actionOnLoginButton(sender: AnyObject) {
        print("Click on login button");
        if username_textField.text == "" || password_textField.text == ""
        {
            print("Fill all details")
        }
        else
        {
            print("Login Successful")
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

