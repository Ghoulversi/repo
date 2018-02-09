//
//  CreateAccountVC.swift
//  SmackDat
//
//  Created by Minami on 2/9/18.
//  Copyright © 2018 Minami. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func closePressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    

    

}
