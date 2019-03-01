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
        
        let randomChair = Int.random(in: 1..<4)
        let randomTable = Int.random(in: 1..<4)
        
        var furniture: [Any] = []
        
        for _ in 0..<randomChair * 2 {
            furniture.append(ModernFactory().createChair())
            furniture.append(RenaissanceFactory().createChair())
        }
        for _ in 0..<randomTable {
            furniture.append(ModernFactory().createTable())
            furniture.append(RenaissanceFactory().createTable())
        }
        
        mainTableView.furniture = TableElementsMapper.map(list: furniture)
        mainTableView.reloadData()
    }
}
