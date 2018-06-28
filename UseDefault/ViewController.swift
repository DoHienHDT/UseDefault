//
//  ViewController.swift
//  UseDefault
//
//  Created by dohien on 6/28/18.
//  Copyright © 2018 hiền hihi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
    var data: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        if data != nil {
            nameTextField.text = data
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        data = nameTextField.text
    }
}

