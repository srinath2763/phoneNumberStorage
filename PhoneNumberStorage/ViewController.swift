//
//  ViewController.swift
//  PhoneNumberStorage
//
//  Created by IMCS2 on 2/13/19.
//  Copyright © 2019 IMCS2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var phone: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if isKeyPresentInUserDefaults(key: "name") && isKeyPresentInUserDefaults(key: "phone"){
            saveButton.setTitle("update", for: .normal)
        }
        
    }
    
    func isKeyPresentInUserDefaults(key: String) -> Bool {
        return UserDefaults.standard.object(forKey: key) != nil
        
    }
    
    @IBAction func save(_ sender: Any) {
        UserDefaults.standard.set(name.text, forKey: "name")
            UserDefaults.standard.set(phone.text, forKey: "phone")
    }
    
}

