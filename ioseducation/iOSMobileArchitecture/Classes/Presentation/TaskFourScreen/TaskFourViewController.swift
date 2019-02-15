//
//  TaskFourViewController.swift
//  iOSMobileArchitecture
//
//  Created by user on 05.02.2019.
//  Copyright © 2019 Andrey Chernyshev. All rights reserved.
//

import UIKit

class TaskFourViewController : UIViewController{
    
    @IBOutlet weak var mainTableView: MainTableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    var table = FurnitureFactory()
    let factory = ModernTable()

    
}
