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
        
        let storyboard = UIStoryboard(name: "TaskThreeScreen", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "TaskThreePartThree") as! TaskThreePartThreeViewController
        vc.completionHandler = { persone in
        
            self.label.text = """
            \(persone?.returnFIO() ?? "")
            \(persone?.returbDate() ?? "")
            \(persone?.returnAdress() ?? "")
            \(persone?.returnPhoneNumber() ?? "")
            \(persone?.returnTodayDate() ?? "")
            """        
    }
    present(vc, animated: true, completion: nil)
}
    
    @IBAction func secondScreenButton(_ sender: Any) {
       
    }
    @IBAction func thirdScreenButton(_ sender: Any) {
     
    }
    
}
