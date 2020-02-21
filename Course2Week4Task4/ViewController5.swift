//
//  ViewController5.swift
//  Course2Week4Task4
//
//  Created by Konstantins Belcickis on 21/02/2020.
//  Copyright © 2020 Konstantins Belcickis. All rights reserved.
//

import UIKit

class ViewController5: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
        setupButton()
    }
}

extension ViewController5 {
    private func setupButton() {
        let x = view.frame.width - 100
        let y = view.center.y
        let buttonReturnBack = UIButton(type: .system)
        buttonReturnBack.frame = CGRect(x: 0, y: y-130, width: x, height: 50)
        buttonReturnBack.layer.borderWidth = 1.0
        buttonReturnBack.layer.cornerRadius = 5
        buttonReturnBack.backgroundColor = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
        buttonReturnBack.layer.borderColor = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
        buttonReturnBack.setTitle("Back", for: .normal)
        buttonReturnBack.titleLabel?.font = UIFont.systemFont(ofSize: 25)
        buttonReturnBack.addTarget(ViewController2(), action: #selector(removeChild), for: .touchUpInside)
        view.addSubview(buttonReturnBack)
    }
    
    @objc func removeChild() {
        willMove(toParent: nil)
        view.removeFromSuperview()
        removeFromParent()
    }
}
