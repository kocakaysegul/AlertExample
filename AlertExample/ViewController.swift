//
//  ViewController.swift
//  AlertExample
//
//  Created by Ayşegül Koçak on 21.02.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameTextF: UITextField!
    @IBOutlet weak var passwordTextF: UITextField!
    @IBOutlet weak var password2TextF: UITextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signInClicked(_ sender: Any) {
        /*
        let alert = UIAlertController(title: "Error!", message: "Username not found", preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK!", style: UIAlertAction.Style.default){_ in
            print("ok pressed")
        }
        alert.addAction(okButton)
        self.present(alert, animated: true)
         */
        
        
        if usernameTextF.text == "" {
            makeAlert(title: "Error!", message: "Username not found")
        } else if passwordTextF.text == "" {
            makeAlert(title: "Error!", message: "Password not found")
        } else if passwordTextF.text != password2TextF.text {
            
            makeAlert(title: "Error!", message: "Passwords dont match!")
        } else {
            makeAlert(title: "success!", message: "you're signed in!")
        }
        
    }
    
    func makeAlert(title : String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK!", style: UIAlertAction.Style.default){_ in
            print("ok pressed")
        }
        alert.addAction(okButton)
        self.present(alert, animated: true)
    }
    
}

