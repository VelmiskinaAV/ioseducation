//
//  TaskFourViewController.swift
//  iOSMobileArchitecture
//
//  Created by user on 05.02.2019.
//  Copyright © 2019 Andrey Chernyshev. All rights reserved.
//

import UIKit

class TaskFourViewController: UIViewController {
    
    @IBOutlet weak var mainTableView: MainTableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let randomChair = Int.random(in: 5..<11)
        let randomTable = Int.random(in: 5..<11)
        let fabrica = ModernFactory()
        let element = fabrica.createChair()
        print(element.type)
        
        
        var furniture: [Any] = []
        
        for _ in 0..<randomChair {
            furniture.append(element)
        }
        for _ in 0..<randomTable {
            furniture.append(element)
        }
        
        mainTableView.furniture = TableElementsMapper.map(list: furniture)
        mainTableView.reloadData()
    }
}
