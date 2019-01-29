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
    var completionHandler: ((CustomerData) -> ())?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
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
        
        let storyboard = UIStoryboard(name: "TaskThreeScreen", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "TaskThreePartThree") as! TaskThreePartThreeViewController
        vc.oldPersone = persone
        vc.completionHandler = { [weak self] data in
            self?.persone = data
        }
        
        navigationController?.pushViewController(vc, animated: true)
    }
}
