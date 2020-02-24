//
//  ViewController2.swift
//  Course2Week4Task4
//
//  Created by Konstantins Belcickis on 21/02/2020.
//  Copyright © 2020 Konstantins Belcickis. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    let childView = ViewController5()
    
    @IBAction func unwindThreeToTwo(segue:UIStoryboardSegue) {}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
        ChildViewSetupButton()
        ViewController4SetupButton()
    }
}

extension ViewController2 {
    
    private func ChildViewSetupButton() {
        
        let x = view.center.x - 100
        let y = view.center.y - 55
        let buttonForChild = UIButton(type: .system)
        buttonForChild.frame = CGRect(x: x, y: y, width: 200.0, height: 50.0)
        buttonForChild.layer.borderWidth = 1.0
        buttonForChild.layer.cornerRadius = 5
        buttonForChild.layer.borderColor = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
        buttonForChild.setTitle("addChildViewController", for: .normal)
        buttonForChild.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        buttonForChild.addTarget(self, action: #selector(setUpChildView), for: .touchUpInside)
        view.addSubview(buttonForChild)
        
    }
    private func ViewController4SetupButton() {
        
        let x = view.center.x - 100
        let y = view.center.y - 100
        let button = UIButton(type: .system)
        button.frame = CGRect(x: x, y: y, width: 200.0, height: 50.0)
        button.layer.borderWidth = 1.0
        button.layer.cornerRadius = 5
        button.layer.borderColor = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
        button.setTitle("toViewController4", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        button.addTarget(self, action: #selector(presentVC4), for: .touchUpInside)
        view.addSubview(button)
    }
    
    @objc private func presentVC4() {
        let destanation = ViewController4()
        present(destanation, animated: true, completion: nil)
    }
    
    @objc private func setUpChildView() {
        
        addChild(childView)
        view.addSubview(childView.view)
        childView.didMove(toParent: self)
        constraintForChildView()
    }
    
    private func constraintForChildView() {
        
        childView.view.translatesAutoresizingMaskIntoConstraints = false
        childView.view.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50).isActive = true
        childView.view.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50).isActive = true
        childView.view.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50).isActive = true
        childView.view.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50).isActive = true
    }
}
