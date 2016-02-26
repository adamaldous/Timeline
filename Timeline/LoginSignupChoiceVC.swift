//
//  LoginSignupChoiceVC.swift
//  Timeline
//
//  Created by Adam Aldous on 2/23/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit

class LoginSignupChoiceVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // MARK: - Navigation
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "signupSegue" {
            
            let destinationViewController = segue.destinationViewController as? LoginSignupVC
            destinationViewController?.viewMode = LoginSignupVC.ViewMode.Signup
            
        } else if segue.identifier == "loginSegue" {
            
            let destinationViewController = segue.destinationViewController as? LoginSignupVC
            destinationViewController?.viewMode = LoginSignupVC.ViewMode.Login
        }
    }
}
