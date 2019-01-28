//
//  TaskTwoViewController.swift
//  iOSMobileArchitecture
//
//  Created by Alexander Mironov on 19.12.2018.
//  Copyright © 2018 Andrey Chernyshev. All rights reserved.
//

import UIKit

class TaskTwoViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func button(_ sender: Any) {
        if textField.text?.lowercased().trimmingCharacters(in: .whitespaces) == "cтол" {
            let table = TableElement()
            label.text = table.returnMessage()
        } else if textField.text?.lowercased().trimmingCharacters(in: .whitespaces) == "стул" {
            let chair = ChairElement()
            label.text = chair.returnMessage() 
        } else {
            label.text = "Некорректный ввод"
        }
    }
}
