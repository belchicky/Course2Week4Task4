//
//  ViewController3.swift
//  Course2Week4Task4
//
//  Created by Konstantins Belcickis on 21/02/2020.
//  Copyright © 2020 Konstantins Belcickis. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {
    var text: String?
    @IBOutlet weak var myLabel: UILabel!
    @IBAction func pressUnwind(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if text != nil {
            myLabel.text = text
        }
    }
    
}
