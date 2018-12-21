//
//  TaskThreePartThreeViewController.swift
//  iOSMobileArchitecture
//
//  Created by admin on 21.12.2018.
//  Copyright © 2018 Andrey Chernyshev. All rights reserved.
//

import UIKit

class TaskThreePartThreeViewController : UIViewController {
     
    @IBOutlet weak var textFieldFIO: UITextField!
    @IBOutlet weak var textFieldDate: UITextField!
    @IBOutlet weak var textFieldAdress: UITextField!
    @IBOutlet weak var textFieldPhoneNumber: UITextField!
    @IBOutlet weak var textFieldTodayDate: UITextField!
    
    var oldPersone = HandingCustomerData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textFieldFIO.text = "\(oldPersone.returnFIO())"
        textFieldDate.text = "\(oldPersone.returbDate())"
        textFieldAdress.text = "\(oldPersone.returnAdress())"
        textFieldPhoneNumber.text = "\(oldPersone.returnPhoneNumber())"
        textFieldTodayDate.text = "\(oldPersone.returnTodayDate())"
    }
    
    var persone = CustomerData()
    @IBAction func changeScreenButton(_ sender: Any) {
        persone.fio = textFieldFIO.text
        persone.date = textFieldDate.text
        persone.adress = textFieldAdress.text
        persone.phoneNumber = textFieldPhoneNumber.text
        persone.todayDate = textFieldTodayDate.text
    }
}
