//
//  ViewController.swift
//  Course2Week4Task4
//
//  Created by Konstantins Belcickis on 17/02/2020.
//  Copyright © 2020 Konstantins Belcickis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textForSending: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 1, green: 0.4932718873, blue: 0.4739984274, alpha: 1)
        textForSending.text = ""
    }
    
    @IBAction func toViewController3(_ sender: Any) {
        performSegue(withIdentifier: "toThirdVC", sender: nil)
      }
    
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if let distanation = segue.destination as? ViewController3 {
            distanation.text = textForSending.text
        }
    }
}

