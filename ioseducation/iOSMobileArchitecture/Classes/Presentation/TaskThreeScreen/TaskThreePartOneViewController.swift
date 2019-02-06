//
//  TaskThreePartOneViewController.swift
//  iOSMobileArchitecture
//
//  Created by admin on 21.12.2018.
//  Copyright © 2018 Andrey Chernyshev. All rights reserved.
//

import UIKit

class TaskThreePartOneViewController : UIViewController, ButtonDelegate {
    
    @IBOutlet weak var label: UILabel!
    var persone: HandingCustomerData?
    var completionHandler: ((CustomerData) -> ())?    
    
    func onButtonTap(data:(HandingCustomerData?)) {
        print("all is ok")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "TaskThreePartOne" {
            let vc : TaskThreePartTwoViewController = segue.destination as! TaskThreePartTwoViewController
            vc.delegate = self
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        label.text = """
        \(persone?.returnFIO() ?? "")
        \(persone?.returbDate() ?? "")
        \(persone?.returnAdress() ?? "")
        \(persone?.returnPhoneNumber() ?? "")
        \(persone?.returnTodayDate() ?? "")
        """
    }
    
    @IBAction func secondScreenButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "TaskThreeScreen", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "TaskThreePartTwo") as! TaskThreePartTwoViewController
        vc.oldPersone = persone

        navigationController?.pushViewController(vc, animated: true)
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
