//
//  TaskThreePartThreeViewController.swift
//  iOSMobileArchitecture
//
//  Created by admin on 21.12.2018.
//  Copyright © 2018 Andrey Chernyshev. All rights reserved.
//

import UIKit

class TaskThreePartThreeViewController: UIViewController {
     
    @IBOutlet weak var textFieldFIO: UITextField!
    @IBOutlet weak var textFieldDate: UITextField!
    @IBOutlet weak var textFieldAdress: UITextField!
    @IBOutlet weak var textFieldPhoneNumber: UITextField!
    @IBOutlet weak var textFieldTodayDate: UITextField!

    var oldPersone: HandingCustomerData?
    
    var completionHandler: ((HandingCustomerData) -> ())?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        textFieldFIO.text = "\(oldPersone?.returnFIO() ?? "")"
        textFieldDate.text = "\(oldPersone?.returbDate() ?? "")"
        textFieldAdress.text = "\(oldPersone?.returnAdress() ?? "")"
        textFieldPhoneNumber.text = "\(oldPersone?.returnPhoneNumber() ?? "")"
        textFieldTodayDate.text = "\(oldPersone?.returnTodayDate() ?? "")"
    }

    @IBAction func changeScreenButton(_ sender: Any) {       
        
        let data = CustomerData(fio: textFieldFIO.text,
                                date: textFieldDate.text,
                                adress: textFieldAdress.text,
                                phoneNumber: textFieldPhoneNumber.text,
                                todayDate: textFieldTodayDate.text)
        let person = HandingCustomerData(data: data)
        completionHandler?(person)
        
        navigationController?.popViewController(animated: true)
        }
    }
 

