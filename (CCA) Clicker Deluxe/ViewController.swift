//
//  ViewController.swift
//  (CCA) Clicker Deluxe
//
//  Created by ssoeuser on 12/7/19.
//  Copyright © 2019 Prakhar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var clickMeButton: UIButton!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var keepClickingLabel: UILabel!
    
    
    var counter = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        numberLabel.text = String(counter)
        keepClickingLabel.alpha = 0
    }

    fileprivate func restToOriginalGameState() {
        counter = 0
        numberLabel.text = String(counter)
        keepClickingLabel.isHidden = true
    }
    
    @IBAction func clickButtonPressed(_ sender: Any) {
        counter += 1
        numberLabel.text = String(counter)
        if counter == 30 {
            UIView.animate(withDuration: 1.0) {
                self.keepClickingLabel.alpha = 1
            }
        } else if counter == 50 {
            performSegue(withIdentifier: "congratsSegue", sender: nil)
            restToOriginalGameState()
        }
    }
    
}
