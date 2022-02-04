//
//  ViewController.swift
//  MainApp
//
//  Created by James Folk on 2/3/22.
//

import UIKit
import FOLKFramework

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.becomeFirstResponder() // To get shake gesture
        
    }
    
    // We are willing to become first responder to get shake motion
    override var canBecomeFirstResponder: Bool {
        get {
            return true
        }
    }
    
    // Enable detection of shake motion
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            var text = "FOLK View Explorer is ON"
            if FOLKManager.shared.toggleExplorer() {
                text = "FOLK View Explorer is OFF"
            }
            self.showToast(message: text, font: .systemFont(ofSize: 12.0))
        }
    }
}


