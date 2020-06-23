//
//  ViewController.swift
//  Practice Time
//
//  Created by ERIC SMITH on 6/18/20.
//  Copyright © 2020 ERIC SMITH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet weak var labelTitle: UILabel!
    

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitButtonTapped(_ sender: UIButton) {
        
        if let newTitle = textField.text {
            labelTitle.text = newTitle
        }
        
    }
    

}

