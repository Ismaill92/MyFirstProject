//
//  ViewController.swift
//  MyFirstProject
//
//  Created by Ismail Mohammad on 6/25/21.
//

import UIKit

class ViewController: UIViewController {
    let label = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let button = UIButton()
        button.frame = CGRect(x: 40, y: 100, width: 100, height: 50)
        button.backgroundColor = .blue
        button.setTitle("Change", for: .normal)
        button.addTarget(self, action: #selector(changeColor(sender:)), for: .touchUpInside)
        self.view.addSubview(button)
        
        label.frame = CGRect(x: 40, y: 180, width: 100, height: 50)
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .black
        label.text = "hello world"
        self.view.addSubview(label)
        
        let button1 = UIButton()
        button1.frame = CGRect(x: 40, y: 250, width: 100, height: 50)
        button1.backgroundColor = .brown
        button1.setTitle("Hide", for: .normal)
        button1.addTarget(self, action: #selector(hideLabel(sender:)), for: .touchUpInside)
        self.view.addSubview(button1)
    }
    
    @objc func changeColor(sender: UIButton) {
        
        if sender.isSelected {
            sender.isSelected = false
            self.view.backgroundColor = .purple
        } else {
            sender.isSelected = true
            self.view.backgroundColor = .green
        }
    }
    
    @objc func hideLabel(sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
            label.isHidden = false
        } else {
            sender.isSelected = true
            label.isHidden = true
        }
    }

}

