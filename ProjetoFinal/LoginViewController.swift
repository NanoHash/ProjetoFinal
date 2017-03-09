//
//  LoginViewController.swift
//  ProjetoFinal
//
//  Created by Student on 3/8/17.
//  Copyright © 2017 Rodrigo Leandro. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBAction func loginAction(_ sender: Any) {
        if let u = FakeUserDB.currentUser {
            let openFeedFor = u
        } else {
                if let e = emailText.text {
                let openFeedFor = FakeUserDB.login(email: e)
            }
        }
    }

    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var senhaText: UITextField!
    
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
