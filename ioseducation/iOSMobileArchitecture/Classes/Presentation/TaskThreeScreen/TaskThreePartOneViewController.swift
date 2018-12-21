//
//  TaskThreePartOneViewController.swift
//  iOSMobileArchitecture
//
//  Created by admin on 21.12.2018.
//  Copyright © 2018 Andrey Chernyshev. All rights reserved.
//

import UIKit

class TaskThreePartOneViewController : UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    var persone = HandingCustomerData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = """
                        \(persone.returnFIO())
                        \(persone.returbDate())
                        \(persone.returnAdress())
                        \(persone.returnPhoneNumber())
                        \(persone.returnTodayDate())
                    """
    }
    
    @IBAction func secondScreenButton(_ sender: Any) {
       
    }
    @IBAction func thirdScreenButton(_ sender: Any) {
        
    }
    
}
