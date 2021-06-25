//
//  ViewController.swift
//  MyFirstProject
//
//  Created by Ismail Mohammad on 6/25/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = .red
        let button = UIButton()
        button.frame = CGRect(x: 40, y: 100, width: 100, height: 50)
        button.backgroundColor = .blue
        button.setTitle("Change", for: .normal)
        button.addTarget(self, action: #selector(changeColor), for: .touchUpInside)
        self.view.addSubview(button)
        
        
    }
    @objc func changeColor() {
        self.view.backgroundColor = .green
    }

}

