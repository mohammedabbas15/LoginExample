//
//  ViewController.swift
//  Login
//
//  Created by Field Employee on 10/17/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var usernameTextfield: UITextField!
    @IBOutlet var passwordTextfield: UITextField!
    @IBOutlet var loginButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginTapped() {
        let username = "abbas@something.com"
        let password = "password"
        if username == usernameTextfield.text, password == passwordTextfield.text {
            if !username.isEmpty && !password.isEmpty {
                let main = UIStoryboard(name: "Main", bundle: nil)
                let listVC = main.instantiateViewController(withIdentifier: "listVC")
                navigationController?.pushViewController(listVC, animated: true)
            }
        }
        else{
            print("Wrong username / password combination")
        }
    }

}

