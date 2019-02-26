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
        
        let chairModern = ModernChair()
        let chairRen = RenaissanceChair()
        let tableModern = ModernChair()
        let tableRen = RenaissanceTable()
        
        var furniture:[(type:String, style: String, name:String, color: String, price: Double)] = []
        
        furniture.append((type:"Chair", style: chairModern.style, name: chairModern.name, color: chairModern.color, price: chairModern.price))
        furniture.append((type:"Chair", style: chairRen.style, name: chairRen.name, color: chairRen.color, price: chairRen.price))
        furniture.append((type:"Table", style: tableModern.style, name: tableModern.name, color: tableModern.color, price: tableModern.price))
        furniture.append((type:"Table", style: tableRen.style, name: tableRen.name, color: tableRen.color, price: tableRen.price))
    }
    
    

    
}
