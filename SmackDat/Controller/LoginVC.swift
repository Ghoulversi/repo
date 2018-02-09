//
//  LoginVC.swift
//  SmackDat
//
//  Created by Minami on 2/9/18.
//  Copyright © 2018 Minami. All rights reserved.
//

import UIKit
import FirebaseAuth
import Firebase

class LoginVC: UIViewController {

    
    @IBOutlet weak var emailFieldText: UITextField!
    
    @IBOutlet weak var passwordFieldText: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func LogIn(_ sender: Any) {
       
        let email = emailFieldText.text
        let password = passwordFieldText.text
        
            Auth.auth().signIn(withEmail: email!, password: password!, completion: { (user, error) in
                
                if error != nil {
                    print(error)
                    return
                }
                
                self.dismiss(animated: true, completion: nil)
            })
    }
    
    @IBAction func closePressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func createAccountBtn(_ sender: Any) {
        performSegue(withIdentifier: TO_CREATE_ACCOUNT, sender: nil)
    }
    
    func createUser(name: String, email: String, avatarName: String, avatarColor: String, completion: @escaping MTLNewLibraryCompletionHandler) {
        
        let lowerCaseEmail = email.lowercased()
        
        let body: [String: Any] = [
            "name": name,
            "email": lowerCaseEmail,
            "avatarName": avatarName,
            "avatarColor": avatarColor
        ]
        
        
    

}
