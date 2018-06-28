//
//  MasterViewController.swift
//  UseDefault
//
//  Created by dohien on 6/28/18.
//  Copyright © 2018 hiền hihi. All rights reserved.
//

import UIKit

class MasterViewController: UIViewController {
    let defaults = UserDefaults.standard
    @IBOutlet weak var nameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = defaults.string(forKey: "name"){
            nameTextField.text = name
        }
    }
    @IBAction func button(_ sender: UIButton) {
        if nameTextField.text != nil {
            UserDefaults.standard.set(nameTextField.text, forKey: "name")
            print("luu r nhe")
        }
    }
    @IBAction func buttonDelete(_ sender: Any) {
        defaults.removeObject(forKey: "name")
        print("Xoa r nhe")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    
}
