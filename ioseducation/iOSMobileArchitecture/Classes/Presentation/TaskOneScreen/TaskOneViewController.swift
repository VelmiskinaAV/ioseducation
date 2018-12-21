//
//  TaskOneViewController.swift
//  iOSMobileArchitecture
//
//  Created by Alexander Mironov on 19.12.2018.
//  Copyright © 2018 Andrey Chernyshev. All rights reserved.
//

import UIKit

class TaskOneViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var secondTextField: UITextField!
    
    @IBAction func button(_ sender: Any) {
        let firstText = firstTextField.text ?? ""
        let secondText = secondTextField.text ?? ""
        label.text = firstText + secondText
    }
}
