//
//  CreateAccountVC.swift
//  SmackDat
//
//  Created by Minami on 2/9/18.
//  Copyright © 2018 Minami. All rights reserved.
//

import UIKit
import FirebaseAuth
import Firebase


class CreateAccountVC: UIViewController {

    @IBOutlet weak var textFieldUsername: UITextField!
    @IBOutlet weak var textFieldEmail: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
    }

    @IBAction func closePressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    
    @IBAction func buttonRegister(_ sender: Any) {
        let email = textFieldEmail.text
        let password = textFieldPassword.text
        let username = textFieldUsername.text
        
        Auth.auth().createUser(withEmail: email!, password: password!, completion:  { (user: User?, Error) in
            if Error == nil {
                print("Register")
            } else {
                print("register failed")
            }
            
            guard let uid = user?.uid else {
                return
            }
            
            // succesfuly registered user
            let ref = Database.database().reference(fromURL: "https://eminescuchat.firebaseio.com/")
            let userReference = ref.child("users").child(uid)
            let values = ["username": username, "email": email]
            userReference.updateChildValues(values, withCompletionBlock: { (err, ref) in
                if err != nil {
                    print(err)
                    return
                }
                self.dismiss(animated: true, completion: nil)
                print("Saved user successfully into firebase db")
                
            })
          
            })
        }
    
}
