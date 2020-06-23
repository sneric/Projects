//
//  ViewController.swift
//  Emojional June 2020
//
//  Created by ERIC SMITH on 6/18/20.
//  Copyright © 2020 ERIC SMITH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let emojis = ["😄" : "Happy", "😰" : "Nervous"]
    
    let customMessages = ["Happy" : ["You're great!", "Way to go!", "Celebrate!"], "Nervous" : ["You will feel better!", "Stay strong!", "You doing great!"]]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showMessage(sender: UIButton) {
        
        let selectedEmotion = (sender.titleLabel?.text)!
        
        let options = customMessages[emojis[selectedEmotion]!]!
        
        
        let emojiMessage = options[1]
        
        let alertController = UIAlertController(title: emojis[selectedEmotion]!, message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
        
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        present(alertController, animated: true, completion: nil)
    }


}

