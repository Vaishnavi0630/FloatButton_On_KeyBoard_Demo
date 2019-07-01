//
//  ViewController.swift
//  FloatbuttonDemo
//
//  Created by Admin on 01/07/19.
//  Copyright © 2019 Vaishnavi Sasane. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtsample: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.addInputAccessoryView(textField: txtsample, title: "FLOAT BUTTON", target: self, selector: #selector(clickOnButton))
    }


    @objc func clickOnButton(){
    
        print("click on float button")
        
    }
    
}

