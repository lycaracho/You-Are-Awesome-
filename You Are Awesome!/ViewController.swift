//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Lyca Racho on 1/24/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("🤌🏽 viewDidLoad has run!")
        messageLabel.text = "Fabulous?"
    }


    @IBAction func messageButtonPressed(_ sender: UIButton) {
        print("🤪 The message button was pressed!")
        messageLabel.text = "You Are Awesome!"
    }
}

